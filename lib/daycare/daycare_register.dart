import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daycare_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareRegister extends StatefulWidget {
  const DaycareRegister({super.key});

  @override
  State<DaycareRegister> createState() => _DaycareRegisterState();
}

class _DaycareRegisterState extends State<DaycareRegister> {
  final formkey = GlobalKey<FormState>();
  final preschoolname = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final preschoolAddress = TextEditingController();

  Future<dynamic> daycareReg() async {
    await FirebaseFirestore.instance.collection("DaycareRegister").add({
      "Username": preschoolname.text,
      "Phone": phone.text,
      "Email": email.text,
      "Password": password.text,
      "PreschoolAddress": preschoolAddress.text,
      "status": 0,
      "path":"https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",

    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DaycareLogin()));
  }

  String? validatePhone(String? value) {
    final phoneRegex = RegExp(r'^\d{10}$');
    if (value == null || value.isEmpty) {
      return "Phone number is required!";
    } else if (!phoneRegex.hasMatch(value)) {
      return "Enter a valid 10-digit phone number!";
    }
    return null;
  }

  String? validateEmail(String? value) {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (value == null || value.isEmpty) {
      return "Email is required!";
    } else if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address!";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 37),
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pregister.png"))),
                ),
                TextFormField(
                  controller: preschoolname,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Preschool name is required!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Preschool Name",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phone,
                  validator: validatePhone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Phone",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  validator: validateEmail,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  controller: preschoolAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Preschool address is required!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Preschool Address",
                      labelStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey, fontSize: 20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      daycareReg();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(14, 97, 116, 0.99),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.inriaSerif(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(fontSize: 15)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DaycareLogin(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromRGBO(14, 97, 116, 0.99),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
