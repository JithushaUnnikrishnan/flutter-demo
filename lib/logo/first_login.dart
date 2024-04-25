import 'package:demo/logo/select_categoryfor%20reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstLogin extends StatefulWidget {
  const FirstLogin({super.key});

  @override
  State<FirstLogin> createState() => _FirstLoginState();
}

class _FirstLoginState extends State<FirstLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
        child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
          child: Container(
            height:MediaQuery.of(context).size.height*.7,
            width: MediaQuery.of(context).size.width*.9,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage("assets/output.png"),
                  fit: BoxFit.fill
              ),

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
                    padding: const EdgeInsets.only(top: 80),
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
                    padding: const EdgeInsets.only(top: 50),
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
                    child: GestureDetector(onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectCategoryreg()));
                    },
                      child: const Text(
                        "Create account?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
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
