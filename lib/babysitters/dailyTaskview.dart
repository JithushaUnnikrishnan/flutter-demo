import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:video_player/video_player.dart';

class VideoListPage extends StatelessWidget {
  bool _isLoading = true;
  Future<void> _pickAndUploadVideo() async {
    _isLoading = true;

    final result = await FilePicker.platform.pickFiles(type: FileType.video);
    if (result != null) {
      final file = result.files.first;
      final filePath = file.path;

      if (filePath != null) {
        final fileName = file.name;
        final fileRef =
            FirebaseStorage.instance.ref().child('videos/$fileName');
        final uploadTask = fileRef.putFile(File(filePath));

        final snapshot = await uploadTask.whenComplete(() => {});
        final downloadUrl = await snapshot.ref.getDownloadURL();

        await FirebaseFirestore.instance.collection('videos').add({
          'url': downloadUrl,
          'name': fileName,
          'uploaded_at': Timestamp.now(),
        });

        _isLoading = false;
        print("done");
        //
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text('Video uploaded successfully!')));
      }
    } else {
      _isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.upload),
        onPressed: () {
          _pickAndUploadVideo();
        },
      ),
      appBar: AppBar(
        title: Text('Video List'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('videos').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final videos = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final video = videos[index];
              final url = video['url'];

              return ListTile(
                title: Text(video['name']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPlayerPage(url: url),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class VideoPlayerPage extends StatefulWidget {
  final String url;

  VideoPlayerPage({required this.url});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
