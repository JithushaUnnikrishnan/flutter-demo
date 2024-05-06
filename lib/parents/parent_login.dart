import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/parent_bottombuton.dart';
import 'package:demo/parents/parent_forgot.dart';
import 'package:demo/parents/searchdaycare.dart';
import 'package:demo/parents/signup_parent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentLogin extends StatefulWidget {
  const ParentLogin({super.key});

  @override
  State<ParentLogin> createState() => _ParentLoginState();
}

class _ParentLoginState extends State<ParentLogin> {
  final formkey=GlobalKey<FormState>();
  var email=TextEditingController();
  var password=TextEditingController();
  Future<dynamic>ParentLog() async {await FirebaseFirestore.instance.collection("Parent Login").add({
    "Email":email.text,
    "Password":password.text
  });
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SearchDaycare()));
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage('assets/output.png'),
                    fit: BoxFit.fill,
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
                        style:GoogleFonts.rubikGlitch(
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
                        return "Empty email !";
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
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
                  InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ParentForgot()));
                  },
                    child: const Row(
                      children: [
                        Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                       ParentLog();}
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
                              builder: (context) => ParentSignup()));
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
