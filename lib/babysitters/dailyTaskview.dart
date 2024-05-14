import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'jeni_profiledaily.dart';

class DailyTaskview extends StatefulWidget {
  const DailyTaskview({super.key});

  @override
  State<DailyTaskview> createState() => _DailyTaskviewState();
}

class _DailyTaskviewState extends State<DailyTaskview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("Daily Task",
              style: GoogleFonts.ubuntu(color: Color(0xFFC24A6B))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              Text(
                'Today',
                style: GoogleFonts.inriaSerif(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              Row(
                children: [
                  Text('Photo'),
                  SizedBox(width: MediaQuery.of(context).size.width * .2),
                  Text('10:02am'),
                  SizedBox(width: MediaQuery.of(context).size.width * .1),
                  Text('Photo'),
                  SizedBox(width: MediaQuery.of(context).size.width * .15),
                  Text('11:02am'),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 115,
                    width: 150,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .002),
                        Image.asset('assets/Image.png'),
                        Text('169kb'),
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .22),
                  Container(
                    height: 115,
                    width: 150,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .002),
                        Image.asset('assets/Image.png'),
                        Text('169kb')
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .43),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChildPage()));
                    },
                    child: Container(
                        child: Center(
                            child: Text("Upload Task",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white, fontSize: 20))),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFC65264),
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
