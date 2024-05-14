import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdmindrRequest extends StatefulWidget {
  const AdmindrRequest({super.key});

  @override
  State<AdmindrRequest> createState() => _AdmindrRequestState();
}

class _AdmindrRequestState extends State<AdmindrRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Padding(
       padding: const EdgeInsets.only(left: 90),
       child: Text('Requests',style: GoogleFonts.ubuntu( color: Color(0xFFC24A6B)),),
     ),),

      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
        return Column(children: [

          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .035,
              ),Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Text(
                  "Dr.Deepak",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                  Text('pediatrician', style: GoogleFonts.inriaSerif(fontSize: 15),),
                  Text('4 year Experiance in pediatric cardiology ', style: GoogleFonts.inriaSerif(fontSize: 15),)
                ],),



            ],
          ),
          Row(

            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.1,width: MediaQuery.of(context).size.width*.035,),
              Container(
                height: 36,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(
                      233,
                      23,
                      23,
                      1,
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.black45)
                    ]),

                child: Center(
                    child: Text(
                      "Reject",
                      style: GoogleFonts.inriaSerif(
                          fontSize: 20, color: Colors.white),
                    )),
              ), SizedBox(
                width: MediaQuery.of(context).size.width * .0150,
              ),
              Container(
                height: 36,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.black45)
                    ]),
                child: Center(
                    child: Text(
                      "Accept",
                      style: GoogleFonts.inriaSerif(
                          fontSize: 20, color: Colors.white),
                    )),
              )],),
          Divider(thickness: 2,),


        ],);
      },









      ),
    );
  }
}
