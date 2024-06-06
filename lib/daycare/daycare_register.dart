import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daycare_home.dart';
import 'package:demo/daycare/daycare_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareRegister extends StatefulWidget {
  const DaycareRegister({super.key});

  @override
  State<DaycareRegister> createState() => _DaycareRegisterState();
}

class _DaycareRegisterState extends State<DaycareRegister> {
  final formkey = GlobalKey<FormState>();
  var preschoolname = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var PreschoolAddress = TextEditingController();

  Future<dynamic> DaycareReg() async {
    await FirebaseFirestore.instance.collection("DaycareRegister").add({
      "Username": preschoolname.text,
      "Phone": phone.text,
      "Email": email.text,
      "Password": password.text,
      "PreschoolAddress": PreschoolAddress.text,
      "path":"",

    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DaycareLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
      
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 37),
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pregister.png"))),
                ),
                TextFormField(
                  controller: preschoolname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Preschool Name !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Preschool Name",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Phone !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Phone",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Email !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Empty Password !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(

                  controller: PreschoolAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Preschool address !";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Preschool Address",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      DaycareReg();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.inriaSerif(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
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
                      style: TextStyle(fontSize: 15)),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaycareLogin()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              14,
                              97,
                              116,
                              0.99,
                            ),
                            fontSize: 15),
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
