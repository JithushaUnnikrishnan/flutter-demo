import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/tabbardaycare.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'daycare_staff.dart';

class StaffEdit extends StatefulWidget {
  const StaffEdit({super.key ,required this.id});

  final id;

  @override
  State<StaffEdit> createState() => _StaffEditState();
}

class _StaffEditState extends State<StaffEdit> {
  final formKey = GlobalKey<FormState>();

  var staffname = TextEditingController();
  var phone = TextEditingController();

  var qualification = TextEditingController();

  Future<dynamic> Editstaff() async {
    await FirebaseFirestore.instance.collection("Daycare AddStaff").doc(
        widget.id).update({
      "Staff Name": staffname.text,
      "Phone": phone.text,

      "Qualification": qualification.text
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DaycareStaff()));
  }

  @override
  Widget build(BuildContext context) {
     return Form(key: formKey,
      child: Scaffold(appBar: AppBar(
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
                  controller: staffname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Staff Name !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Staff Name",
                      labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Phone !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Phone",
                      labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
                ),


                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                TextFormField(
                  controller: qualification,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Qualification !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),

                      labelText: "Qualification",
                      labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                InkWell(onTap: (){
                  if (formKey.currentState!.validate()){
                    Editstaff() ;}
                },
                  child: Container(
                    height: 60,width: 250,
                    child: Center(
                      child: Text("Submit",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(117, 10, 100, 1,)
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
