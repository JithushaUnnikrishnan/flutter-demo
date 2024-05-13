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
import 'package:demo/babysitters/babysitters_foodmenu.dart';
import 'package:demo/babysitters/babysitters_forgotpaswrd.dart';
import 'package:demo/babysitters/babysitters_login.dart';
import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:demo/babysitters/childprofileb.dart';
import 'package:demo/babysitters/healthrecordjeni.dart';
import 'package:demo/babysitters/jeni_profiledaily.dart';
import 'package:demo/babysitters/mychildren%20home%20daily%20helth%20buton.dart';
import 'package:demo/daycare/Datcare_parent.dart';
import 'package:demo/daycare/Daycare_childview.dart';
import 'package:demo/daycare/daycare_activity.dart';
import 'package:demo/daycare/daycare_addactivity.dart';
import 'package:demo/daycare/daycare_addview.dart';
import 'package:demo/daycare/daycare_children.dart';
import 'package:demo/daycare/daycare_food.dart';
import 'package:demo/daycare/daycare_home.dart';
import 'package:demo/daycare/daycare_login.dart';
import 'package:demo/daycare/daycare_parent%20viewpage.dart';
import 'package:demo/daycare/daycare_profile.dart';
import 'package:demo/daycare/daycare_register.dart';
import 'package:demo/daycare/daycare_stafadd.dart';
import 'package:demo/daycare/daycare_staff.dart';
import 'package:demo/daycare/daycare_update.dart';
import 'package:demo/daycare/daycare_updated.dart';
import 'package:demo/daycare/daycare_updatepage.dart';
import 'package:demo/doctor/doctor_forgot.dart';
import 'package:demo/doctor/doctor_home.dart';
// import 'package:demo/doctor/doctor_login.dart';
import 'package:demo/doctor/drRequestpage.dart';
import 'package:demo/doctor/dr_edit.dart';
import 'package:demo/doctor/dr_profile.dart';
import 'package:demo/doctor/login_doctor.dart';
import 'package:demo/doctor/signup_doctor.dart';
import 'package:demo/firebase_options.dart';

import 'package:demo/logo/logo_page.dart';
import 'package:demo/logo/select_categoryfor%20reg.dart';
import 'package:demo/parents/Parent_babyprofile.dart';
import 'package:demo/parents/book_page.dart';
import 'package:demo/parents/childregister.dart';
import 'package:demo/parents/drBookingdatepicker.dart';
import 'package:demo/parents/parent_activity.dart';
import 'package:demo/parents/parent_addhealth.dart';
import 'package:demo/parents/parent_bottombuton.dart';
import 'package:demo/parents/parent_dailytask.dart';
import 'package:demo/parents/parent_dr.dart';
import 'package:demo/parents/parent_food.dart';
import 'package:demo/parents/parent_forgot.dart';
import 'package:demo/parents/parent_healthrecord.dart';
import 'package:demo/parents/parent_home.dart';
import 'package:demo/parents/parent_login.dart';
import 'package:demo/parents/parent_staff.dart';
import 'package:demo/parents/pchildprofile.dart';
import 'package:demo/parents/penroll_edit.dart';
import 'package:demo/parents/searchdaycare.dart';
import 'package:demo/parents/signup_parent.dart';
import 'package:demo/trail.dart';
import 'package:demo/trail2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ParentLogin());
  }
}
