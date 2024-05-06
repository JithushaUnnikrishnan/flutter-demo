import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/admin/ad_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final formkey=GlobalKey<FormState>();
  var email=TextEditingController();
  var password=TextEditingController();
  Future<dynamic>AdminLog() async {await FirebaseFirestore.instance.collection("Admin Login").add({
    "Email":email.text,
    "Password":password.text,
  });Navigator.push(context,
      MaterialPageRoute(builder: (context) => AdminHome()));
  }
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height:MediaQuery.of(context).size.height*.7,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage('assets/output.png'),
                  fit: BoxFit.fill
                ),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Login",
                        style: GoogleFonts.rubikGlitch(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    controller: email,
                    validator: (value){
                      if (value!.isEmpty){
                        return "Empty Email !";
                      }
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.grey[50],
                      labelStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: password,
                    validator: (value){
                      if (value!.isEmpty){
                        return "Empty Password !";
                      }
                    },
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.grey[50],
                        labelStyle: const TextStyle(color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // const Row(
                  //   children: [
                  //     Expanded(
                  //         child: Align(
                  //           alignment: Alignment.bottomRight,
                  //           child: Text(
                  //             "Forgot password?",
                  //             style: TextStyle(fontWeight: FontWeight.bold),
                  //           ),
                  //         )),
                  //   ],
                  // ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                        AdminLog();}

                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Login",
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .079,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
