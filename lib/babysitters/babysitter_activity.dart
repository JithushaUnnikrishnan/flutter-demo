import 'package:flutter/material.dart';

class TeacherActivity extends StatefulWidget {
  const TeacherActivity({super.key});

  @override
  State<TeacherActivity> createState() => _TeacherActivityState();
}

class _TeacherActivityState extends State<TeacherActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Image.asset("assets/girl.png"),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/child2.png",height: 60.5,width: 50,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
