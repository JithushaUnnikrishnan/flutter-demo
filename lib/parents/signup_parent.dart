import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/parent_login.dart';
import 'package:demo/parents/searchdaycare.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentSignup extends StatefulWidget {
  const ParentSignup({super.key});

  @override
  State<ParentSignup> createState() => _ParentSignupState();
}

class _ParentSignupState extends State<ParentSignup> {
  final formkey=GlobalKey<FormState>();
  var parentname = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  Future<dynamic> ParentReg() async {
    await FirebaseFirestore.instance.collection("ParentRegister").add({
      "Parent Name": parentname.text,
      "Phone": phone.text,
      "Email": email.text,
      "Password": password.text,
    });
    print('done');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchDaycare()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 116,
          backgroundColor: Colors.white,
          title: Center(child: Image.asset("assets/pregister.png")),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 37),
            child: Column(
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .001,
                // ),
                TextFormField(
                  controller: parentname,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Empty Parent Name !";
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Parent Name",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  controller: phone,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Empty Phone !";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Phone",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  controller: email,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Empty Email !";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  controller: password,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Empty Password !";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()){
                    ParentReg();}
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    child: Text(
                      "Register",
                      style: GoogleFonts.inriaSerif(
                        height: 1,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(
                          14,
                          97,
                          116,
                          0.99,
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Already have an account?",
                      style: TextStyle(fontSize: 20)),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ParentLogin()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ))
                ]),

              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
