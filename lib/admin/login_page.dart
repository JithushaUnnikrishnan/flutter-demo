import 'package:demo/admin/ad_home.dart';
import 'package:flutter/cupertino.dart';
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height:MediaQuery.of(context).size.height*.7,
            width: MediaQuery.of(context).size.width*.9,
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage('assets/output.png'),
                fit: BoxFit.fill
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
                // const Row(
                //   children: [
                //     Expanded(
                //         child: Align(
                //           alignment: Alignment.bottomRight,
                //           child: Text(
                //             "Forgot password?",
                //             style: TextStyle(fontWeight: FontWeight.bold),
                //           ),
                //         )),
                //   ],
                // ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AdminHome()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "Login",
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .079,
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
