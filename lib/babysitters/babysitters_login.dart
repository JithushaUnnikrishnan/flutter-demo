import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:flutter/material.dart';

class BabysitterLogin extends StatefulWidget {
  const BabysitterLogin({super.key});

  @override
  State<BabysitterLogin> createState() => _BabysitterLoginState();
}

class _BabysitterLoginState extends State<BabysitterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login")),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
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
                  child: Text("Forgot password?"),
                )),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(94, 91, 255, 1),
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
                mouseCursor: MaterialStateProperty.all(SystemMouseCursors.basic),
              ),
              child: Text("Create account?"),

            )
          ],
        ),
      ),
    );
  }
}
