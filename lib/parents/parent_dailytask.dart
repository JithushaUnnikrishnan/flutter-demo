import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ParentDailytask extends StatefulWidget {
  const ParentDailytask({super.key});

  @override
  State<ParentDailytask> createState() => _ParentDailytaskState();
}

class _ParentDailytaskState extends State<ParentDailytask> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
        ),
        autoPlay: false
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Center(
          child: Text(
            "Daily Task",
            style: GoogleFonts.inriaSerif(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text('Today',style: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),),
      SizedBox(height:MediaQuery.of(context).size.height*.02),
      Row(
        children: [
          Text('Photo'),
          SizedBox(width:MediaQuery.of(context).size.width*.2),
          Text('10:02am'),
          SizedBox(width:MediaQuery.of(context).size.width*.1),
          Text('Photo'),
          SizedBox(width:MediaQuery.of(context).size.width*.15),
          Text('11:02am'),

        ],
      ),
      Row(
        children: [
          Container(height: 115,width: 150,color: Colors.grey,
              child:Column(
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height*.002),
                  Image.asset('assets/Image.png'),

                  Text('169kb'),
                ],
              ),
          ),

          SizedBox(width:MediaQuery.of(context).size.width*.22),
          Container(height: 115,width: 150,
              color: Colors.grey,
              child:Column(
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height*.002),
                  Image.asset('assets/Image.png'),
                  Text('169kb')
                ],
              ),
          )


        ],
      ),
      SizedBox(height:30),
      Container(
        width: 450,
        height: 200,
        child: FlickVideoPlayer(flickManager: flickManager),
      ),
      SizedBox(height: 50,),
      Container(color: Colors.red,
        width: 500,
        height: 200,
        child: FlickVideoPlayer(flickManager: flickManager),
      ),

      SizedBox(height:MediaQuery.of(context).size.height*.04),
      Container(height: 115,width: 150,
        color: Colors.grey,
        child:Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*.002),
            Image.asset('assets/Image.png'),
            Text('169kb')
          ],
        ),
      )


    ],


    ),
  ),
),
    );
  }
}
