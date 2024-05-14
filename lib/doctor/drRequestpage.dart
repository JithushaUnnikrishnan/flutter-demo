import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorRequest extends StatefulWidget {
  const DoctorRequest({super.key});

  @override
  State<DoctorRequest> createState() => _DoctorRequestState();
}

class _DoctorRequestState extends State<DoctorRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Requests',
                style:
                    GoogleFonts.inriaSerif(fontSize: 35, color: Colors.white))),
        toolbarHeight: MediaQuery.of(context).size.height * .15,
        backgroundColor: Color.fromRGBO(
          147,
          180,
          209,
          1,
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 10,right: 20),
            child: Container(
              height: 135,
              width: 320,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      color: Colors.grey),
                ],
                borderRadius: BorderRadius.circular(10),
                color:Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name:Jeni'),
                        Text('Date:October/12/12'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        ElevatedButton(
                            onPressed: () {}, child: Text("Approve"),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,shadowColor: Colors.grey,foregroundColor: Colors.white,elevation: 3
                        ),

                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text('  Reject  '),style: ElevatedButton.styleFrom( backgroundColor: Colors.red,shadowColor: Colors.grey,foregroundColor: Colors.white,elevation: 3,),
                        ) ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
