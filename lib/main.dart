import 'package:demo/babysitters/babysitter_activity.dart';
import 'package:demo/babysitters/babysitter_edit.dart';
import 'package:demo/babysitters/babysitter_profile.dart';
import 'package:demo/babysitters/babysitter_home.dart';
import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:demo/babysitters/childprofileb.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TeacherActivity()
    );
  }
}

