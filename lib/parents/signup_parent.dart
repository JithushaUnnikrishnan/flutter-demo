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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              TextFormField(
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Email",
                    labelStyle: GoogleFonts.inriaSerif(
                        color: Colors.grey, fontSize: 20)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchDaycare()));
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
    );
  }
}
