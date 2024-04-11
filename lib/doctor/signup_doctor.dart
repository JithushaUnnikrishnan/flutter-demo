import 'package:demo/doctor/doctor_bottombuton.dart';
import 'package:demo/doctor/doctor_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorSignup extends StatefulWidget {
  const DoctorSignup({super.key});

  @override
  State<DoctorSignup> createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
          elevation: 10,
          shadowColor: Colors.black,
          title:  Padding(
            padding: const EdgeInsets.only(left: 97),
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Qualification",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Specialization",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                minLines: 5,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Home Address",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                minLines: 5,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Office Address",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                minLines: 5,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Experiance",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10,),


                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DBottomButton()));
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
    );
  }
}
