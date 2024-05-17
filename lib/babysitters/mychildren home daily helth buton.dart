import 'package:demo/babysitters/childprofileb.dart';
import 'package:demo/babysitters/dailyTaskview.dart';
import 'package:demo/babysitters/healthrecordView.dart';
import 'package:demo/babysitters/healthrecordjeni.dart';
import 'package:demo/babysitters/jeni_profiledaily.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MychildrenHome extends StatefulWidget {
  const MychildrenHome({super.key});

  @override
  State<MychildrenHome> createState() => _MychildrenHomeState();
}

class _MychildrenHomeState extends State<MychildrenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TeacherChildprofile()));
            },
            icon: Icon(Icons.arrow_back)),
        toolbarHeight: 100,
        title: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/girl.png'),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Jeni',
                      style: GoogleFonts.inriaSerif(fontSize: 20),
                    ),
                    subtitle: Text(
                      'Female',
                      style: GoogleFonts.inriaSerif(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .18),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DailyTaskview()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .14,
                  width: MediaQuery.of(context).size.width * .41,
                  child: Center(
                      child: Text(
                    'Daily Task',
                    style: GoogleFonts.inriaSerif(
                        color: Colors.white, fontSize: 19),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue,
                          Colors.purple,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 4),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .17),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HealthView()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .14,
                  width: MediaQuery.of(context).size.width * .41,
                  child: Center(
                      child: Text(
                    'Health Record',
                    style: GoogleFonts.inriaSerif(
                        color: Colors.white, fontSize: 19),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue,
                          Colors.purple,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 4),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
