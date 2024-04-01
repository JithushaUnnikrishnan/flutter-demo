import 'package:demo/admin/Admin_parentpage.dart';
import 'package:demo/admin/ad_home.dart';
import 'package:demo/admin/staff_admin.dart';
import 'package:demo/babysitters/babysitter_home.dart';
import 'package:demo/babysitters/babysitters_login.dart';
import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:demo/babysitters/childprofileb.dart';
import 'package:demo/doctor/login_doctor.dart';
import 'package:demo/doctor/signup_doctor.dart';
import 'package:demo/login.dart';
import 'package:demo/register.dart';
import 'package:demo/text.dart';
import 'package:flutter/material.dart';

import 'admin/login_page.dart';

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
      home: DoctorLogin()
    );
  }
}

