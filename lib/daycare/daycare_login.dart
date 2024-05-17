import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daybottombutn.dart';
import 'package:demo/daycare/daycare_forgot.dart';
import 'package:demo/daycare/daycare_register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DaycareLogin extends StatefulWidget {
  const DaycareLogin({super.key});

  @override
  State<DaycareLogin> createState() => _DaycareLoginState();
}

class _DaycareLoginState extends State<DaycareLogin> {
  final formkey=GlobalKey<FormState>();
  var email=TextEditingController();
  var password=TextEditingController();
  String name='';
String id="";
  void DayLog() async {
    final user = await FirebaseFirestore.instance
        .collection('DaycareRegister')
        .where('Email', isEqualTo: email.text)
        .where('Password', isEqualTo: password.text)

        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      name=user.docs[0]["Username"];

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString("name", name);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return DayBottomButton();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Email and password invalid",
            style: TextStyle(color: Colors.red),
          )));
      print("done");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height:MediaQuery.of(context).size.height*.7,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(

                image: DecorationImage(

                  image: AssetImage('assets/output.png',),fit: BoxFit.fill


                ),
                borderRadius: BorderRadius.circular(50),
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
                    obscureText: true,
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
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DaycareForgot()));
                            },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle( color: Colors.black),
                              ),
                            ),
                          )),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                          DayLog();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Login",
                      )),
                 SizedBox(
                    height: MediaQuery.of(context).size.height*.05,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DaycareRegister()));
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                      mouseCursor:
                      MaterialStateProperty.all(SystemMouseCursors.basic),
                    ),
                    child: const Text(
                      "Create account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
