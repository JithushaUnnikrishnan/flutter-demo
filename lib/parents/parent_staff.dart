import 'package:demo/parents/parent_bottombuton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentStaff extends StatefulWidget {
  const ParentStaff({super.key});

  @override
  State<ParentStaff> createState() => _ParentStaffState();
}

class _ParentStaffState extends State<ParentStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 202,
              width: 415,
              color: Color.fromRGBO(238, 54, 74, 1),
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * .04),
                  InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PBottomButton()));
                  },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(width: MediaQuery.of(context).size.width * .02),
                  Image.asset('assets/board.png'),
                  Text('Teacher', style: GoogleFonts.irishGrover(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(251, 149, 160, 1))),
                ],
              ),
            ),
            Positioned(
              top: 150,
                left: 1,right:1,
                child: Container(

                  height: 450,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(65), color: Colors.white


                  ),
              child: Column(
                children: [

                  SizedBox(height: MediaQuery.of(context).size.height * .09),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ListTile(
                        leading: Image.asset('assets/stf1.png'),
                        title: Text('Name:Dayana C',style: GoogleFonts.inriaSerif(fontSize: 15)),
                        subtitle: Text('Phone:1234567890',style: GoogleFonts.inriaSerif(fontSize: 15),),
                        trailing: Icon(Icons.call,color: Colors.green,size: 50,),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * .05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ListTile(
                        leading: Image.asset('assets/stf2.png'),
                        title: Text('Name:Kiran S',style: GoogleFonts.inriaSerif(fontSize: 15)),
                        subtitle: Text('Phone:1234567890',style: GoogleFonts.inriaSerif(fontSize: 15),),
                        trailing: Icon(Icons.call,color: Colors.green,size: 50,),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),


                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
