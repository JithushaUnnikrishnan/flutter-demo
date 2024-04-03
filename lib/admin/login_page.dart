import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "Admin Login",
      //     style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
      //   )),
      //   backgroundColor: Colors.green,
      // ),

      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/login.png'),
          fit: BoxFit.fill,)),
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 50,),
                Text("Login",style: GoogleFonts.rubikGlitch(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
            // CircleAvatar(
            //   radius: 50,
            //   backgroundColor: Colors.black,
            //   child: Icon(
            //     CupertinoIcons.house_fill,
            //     color: Colors.green,
            //     size: 50,
            //   ),
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [Text("Email")],
            // ),
            const SizedBox(
              height: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.grey[50],
                  labelStyle: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 110,
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     // Text("Password"),
            //   ],
            // ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Password",
                filled: true,
                fillColor: Colors.grey[50],
                labelStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold),))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Create account?",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
