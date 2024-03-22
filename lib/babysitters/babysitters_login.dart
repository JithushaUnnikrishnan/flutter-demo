import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:flutter/material.dart';
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
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
            SizedBox(
              height: 60,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.grey[50],
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.grey[50],
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            ElevatedButton(
                onPressed: () {},
                child: Text("Login",),
                style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white)),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BabysitterSignup()));
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                mouseCursor:
                    MaterialStateProperty.all(SystemMouseCursors.basic),
              ),
              child: Text(
                "Create account?",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
