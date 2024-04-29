import 'package:demo/admin/admin_drrequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDoctor extends StatefulWidget {
  const AdminDoctor({super.key});

  @override
  State<AdminDoctor> createState() => _AdminDoctorState();
}

class _AdminDoctorState extends State<AdminDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color.fromRGBO(54, 151, 238, 1),
          toolbarHeight: 104,
          title: Container(
            child: Row(children: [Text(
              "Doctor",
              style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
    Spacer(),
    TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AdmindrRequest()));},
      child: Text(
      "Requests",
      style: GoogleFonts.inriaSerif(fontSize:20,
      color: Colors.white,),),
    )
            ],)
          )),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Container(
                  width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), image: DecorationImage(image: AssetImage("assets/drimage.png",),fit: BoxFit.cover,)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .045,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                  "Dr.Sarah",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                  Text('Pediatrician'),
                  Text('City Hospital'),
                  Text('Calicut'),
                  Text('0456732187698')
                
                ],),

                SizedBox(
                  width: MediaQuery.of(context).size.width * .250,
                ),
                Icon(CupertinoIcons.delete)
              ],
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}
