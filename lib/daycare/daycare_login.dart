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
      appBar: AppBar(
        toolbarHeight: 116,
        backgroundColor: Colors.white,
        title:Center(child: Text("TinyTots Care",style: GoogleFonts.irishGrover(color: Colors.black,fontSize: 40)))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 37),
          child: Column(
            children: [
              Text("Welcome",style: GoogleFonts.irishGrover(color: Colors.black,fontSize: 40),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Email",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Password",
                    
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              InkWell(onTap: (){},
                child: Container(
                  height: 60,width: 300,
                  child: Center(
                    child: Text("Login",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(14, 97, 116, 0.99,)
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              InkWell(onTap: (){},
                child: Container(
                  height: 60,width: 300,
                  child: Center(
                    child: Text("Sign up",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(14, 97, 116, 0.99,)
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style:TextStyle(fontSize: 20)),

                    GestureDetector(onTap:(){},
                        child: Text("Login",style: TextStyle(color: Colors.blueAccent,fontSize: 20),))
                  ]
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,

    );
  }
}
