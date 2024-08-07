import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/signup_doctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'doctor_bottombuton.dart';
import 'doctor_forgot.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({Key? key}) : super(key: key);

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  final formkey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  String id="";

  void DoctorLog() async {
    final user = await FirebaseFirestore.instance
        .collection('DoctorReg')
        .where('email', isEqualTo: email.text)
        .where('password', isEqualTo: password.text)

        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;


      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);


      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return DBottomButton();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Email and password invalid",
            style: TextStyle(color: Colors.red),
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width * .9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage('assets/output.png'),
                  fit: BoxFit.fill,
                ),
              ),

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

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty Email!";
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
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
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
                  ),

                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => DoctorForgot()));
                  //   },
                  //   child: const Row(
                  //     children: [
                  //       Expanded(
                  //           child: Align(
                  //         alignment: Alignment.bottomRight,
                  //         child: Text(
                  //           "Forgot password?",
                  //           style: TextStyle(),
                  //         ),
                  //       )),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                           DoctorLog();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                        child: const Text(
                          "Login",
                        )),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(top: 170),
                  //   child: TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => DoctorSignup()));
                  //     },
                  //     style: ButtonStyle(
                  //       overlayColor:
                  //           MaterialStateProperty.all(Colors.transparent),
                  //       mouseCursor:
                  //           MaterialStateProperty.all(SystemMouseCursors.basic),
                  //     ),
                  //     child: const Text(
                  //       "Create account?",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
