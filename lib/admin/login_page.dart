import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "Admin Login",
      //     style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
      //   )),
      //   backgroundColor: Colors.green,
      // ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              child: Icon(
                CupertinoIcons.house_fill,
                color: Colors.green,
                size: 50,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Email")],
            ),
            SizedBox(
              height: 10,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                filled: true,
                fillColor: Colors.grey[50],
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Forgot Password?"))),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(94, 91, 255, 1),
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Create account?")
          ],
        ),
      ),
    );
  }
}
