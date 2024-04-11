import 'package:demo/daycare/daycare_staff.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareStafadd extends StatefulWidget {
  const DaycareStafadd({super.key});

  @override
  State<DaycareStafadd> createState() => _DaycareStafaddState();
}

class _DaycareStafaddState extends State<DaycareStafadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      toolbarHeight: 116,
      backgroundColor: Colors.white,
      title: Center(child: Image.asset("assets/pregister.png")),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 37),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Staff Name",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Phone",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Email",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                    labelText: "Qualification",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareStaff()));
              },
                child: Container(
                  height: 60,width: 250,
                  child: Center(
                    child: Text("Submit",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(14, 97, 116, 0.99,)
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
