import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareRegister extends StatefulWidget {
  const DaycareRegister({super.key});

  @override
  State<DaycareRegister> createState() => _DaycareRegisterState();
}

class _DaycareRegisterState extends State<DaycareRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 116,
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("assets/pregister.png")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 37),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Preschool Name",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Phone",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                    labelText: "Email",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                    labelText: "Preschool Address",
                    labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){},
                child: Container(
                  height: 60,width: 300,
                  child: Center(
                    child: Text("Register",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40, ),
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
