import 'package:demo/admin/Admin_parentpage.dart';
import 'package:demo/admin/ad_home.dart';
import 'package:demo/admin/admin_daycare.dart';
import 'package:demo/admin/admin_doctor.dart';
import 'package:demo/admin/login_page.dart';
import 'package:demo/admin/staff_admin.dart';
import 'package:demo/babysitters/addactivity.dart';
import 'package:demo/babysitters/babysitter_activity.dart';
import 'package:demo/babysitters/babysitter_edit.dart';
import 'package:demo/babysitters/babysitter_profile.dart';
import 'package:demo/babysitters/babysitter_home.dart';
import 'package:demo/babysitters/babysitters_login.dart';
import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:demo/babysitters/childprofileb.dart';
import 'package:demo/babysitters/jeni_profile.dart';
import 'package:demo/daycare/daycare_home.dart';
import 'package:demo/daycare/daycare_login.dart';
import 'package:demo/daycare/daycare_register.dart';
import 'package:demo/doctor/doctor_home.dart';
import 'package:demo/doctor/doctor_login.dart';
import 'package:demo/doctor/dr_edit.dart';
import 'package:demo/doctor/dr_profile.dart';
import 'package:demo/logo/logo_page.dart';
import 'package:demo/parents/book_page.dart';
import 'package:demo/parents/childregister.dart';
import 'package:demo/parents/parent_activity.dart';
import 'package:demo/parents/parent_addhealth.dart';
import 'package:demo/parents/parent_dr.dart';
import 'package:demo/parents/parent_healthrecord.dart';
import 'package:demo/parents/parent_home.dart';
import 'package:demo/parents/parent_login.dart';
import 'package:demo/parents/pchildprofile.dart';
import 'package:demo/parents/penroll_edit.dart';
import 'package:demo/parents/searchdaycare.dart';
import 'package:demo/parents/signup_parent.dart';
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
      home: const DaycareHome()
    );
  }
}

