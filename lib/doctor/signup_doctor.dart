import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/doctor/doctor_bottombuton.dart';
import 'package:demo/doctor/doctor_home.dart';

// import 'package:demo/doctor/doctor_login.dart';
import 'package:demo/doctor/login_doctor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorSignup extends StatefulWidget {
  const DoctorSignup({super.key});

  @override
  State<DoctorSignup> createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  final formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var password = TextEditingController();
  var email = TextEditingController();
  var qualification = TextEditingController();
  var specialization = TextEditingController();
  var homeaddress = TextEditingController();
  var officeaddress = TextEditingController();
  var experience = TextEditingController();
  var phone = TextEditingController();

  Future<dynamic> Doctoreg() async {
    await FirebaseFirestore.instance.collection("DoctorReg").add({
      "Username": name.text,
      "password": password.text,
      "email": email.text,
      "qualification": qualification.text,
      "specialization": specialization.text,
      "homeaddress": homeaddress.text,
      "officeaddress": officeaddress.text,
      "experience": experience.text,
      "Phone": phone.text,
      "status": 0
    });
    print('successfully');
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DoctorLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 10,
            shadowColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/logo.png"),
                radius: 35,
              ),
            ),
            backgroundColor: const Color.fromRGBO(56, 127, 142, 1)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty name !";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Email !";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Password !";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Phone !";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: qualification,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Qualification !";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Qualification",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: specialization,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty Specialization !';
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Specialization",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: homeaddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Homeaddress !";
                    }
                  },
                  // keyboardType: TextInputType.streetAddress,
                  minLines: 5,
                  maxLines: 5,

                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Home Address ",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: officeaddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Office Address !";
                    }
                  },
                  minLines: 5,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Office Address",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: experience,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty Experiance !";
                    }
                  },
                  minLines: 5,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Experiance",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Doctoreg();
                      }
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "Submit",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
