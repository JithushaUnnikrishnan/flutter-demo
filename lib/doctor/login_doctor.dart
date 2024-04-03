import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({super.key});

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login.png"), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                "Login",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.rubikGlitch(color: Colors.white, fontSize: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Email",
                      filled: true,
                      fillColor: Colors.grey[50],
                      labelStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Password",
                      filled: true,
                      fillColor: Colors.grey[50],
                      labelStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Login",
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  mouseCursor:
                      MaterialStateProperty.all(SystemMouseCursors.basic),
                ),
                child: const Text(
                  "Create account?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
