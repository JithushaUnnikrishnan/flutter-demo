import 'package:demo/daycare/daybottombutn.dart';
import 'package:demo/daycare/daycare_forgot.dart';
import 'package:demo/daycare/daycare_register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareLogin extends StatefulWidget {
  const DaycareLogin({super.key});

  @override
  State<DaycareLogin> createState() => _DaycareLoginState();
}

class _DaycareLoginState extends State<DaycareLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 116,
      //   backgroundColor: Colors.white,
      //   title:Center(child: Text("TinyTots Care",style: GoogleFonts.irishGrover(color: Colors.black,fontSize: 40)))
      // ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 37),
      //     child: Column(
      //       children: [
      //         Text("Welcome",style: GoogleFonts.irishGrover(color: Colors.black,fontSize: 40),),
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
      //         TextFormField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      //               labelText: "Email",
      //               labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
      //         ),
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
      //         TextFormField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      //               labelText: "Password",
      //
      //               labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
      //         ),
      //
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
      //         InkWell(onTap: (){},
      //           child: Container(
      //             height: 60,width: 300,
      //             child: Center(
      //               child: Text("Login",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
      //               ),
      //             ),
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(14, 97, 116, 0.99,)
      //             ),
      //           ),
      //         ),
      //
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
      //         InkWell(onTap: (){
      //
      //         },
      //           child: Container(
      //             height: 60,width: 300,
      //             child: Center(
      //               child: Text("Sign up",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
      //               ),
      //             ),
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(14, 97, 116, 0.99,)
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
      //         Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text("Already have an account?",style:TextStyle(fontSize: 20)),
      //
      //               GestureDetector(onTap:(){},
      //                   child: Text("Login",style: TextStyle(color: Colors.blueAccent,fontSize: 20),))
      //             ]
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // backgroundColor: Colors.white,
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
                                builder: (context) => DaycareForgot()));
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
                          builder: (context) => DayBottomButton()));
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
                        builder: (context) => const DaycareRegister()));
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
