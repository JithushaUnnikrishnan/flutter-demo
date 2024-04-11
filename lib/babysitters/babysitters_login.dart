
import 'package:demo/babysitters/babysitter_home.dart';
import 'package:demo/babysitters/babysitters_forgotpaswrd.dart';
import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class BabysitterLogin extends StatefulWidget {
  const BabysitterLogin({super.key});

  @override
  State<BabysitterLogin> createState() => _BabysitterLoginState();
}

class _BabysitterLoginState extends State<BabysitterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text("Login")),
      // ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(

            image: AssetImage('assets/output.png',),
          //   // fit: BoxFit.fill,

          ),
          borderRadius: BorderRadius.circular(90),
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
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Email",
                filled: true,
                fillColor: Colors.grey[50],
                labelStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.grey[50],
                  labelStyle: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 10,
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
                                        builder: (context) => BabysForgot()));
                  },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomButton()));
                },
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BabysitterSignup()));
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
    );
  }
}
