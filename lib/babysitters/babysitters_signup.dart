import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/babysitters/babysitter_home.dart';
import 'package:demo/babysitters/babysitters_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BabysitterSignup extends StatefulWidget {
  const BabysitterSignup({super.key});

  @override
  State<BabysitterSignup> createState() => _BabysitterSignupState();
}

class _BabysitterSignupState extends State<BabysitterSignup> {
  final formkey=GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var address = TextEditingController();
  var qualification = TextEditingController();
  var Daycarename = TextEditingController();
  var experience = TextEditingController();
  var idproofnumber = TextEditingController();
  var phonenumber = TextEditingController();

  Future<dynamic> babysitterReg() async {
    await FirebaseFirestore.instance.collection("babysiiterReg").add({
      "UserName":name.text,
      "email":email.text,
      "password":password.text,
      "address":address.text,
      "qualification":qualification.text,
      "daycarename":Daycarename.text,
      "experiance":experience.text,
      "idproofnumber":idproofnumber.text,
      "phonenumber":phonenumber.text
    });
    print('done');
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const BabysitterLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          shadowColor: Colors.black,
          elevation: 10,
          title: Padding(
            padding: const EdgeInsets.only(right: 65),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/logo.png'),
                radius: 35,
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(113, 42, 168, 1),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              TextFormField(
                controller: name,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Name !";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: email,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Email !";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                   hintText: "Email",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: password,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Password !";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: address,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Address !";
                  }
                },
                minLines: 5,
                maxLines: 5,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Address",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: qualification,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Qualification !";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Qualification",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: Daycarename,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Daycare !";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Daycare Name",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: experience,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Experience !";
                  }
                },
                minLines: 5,
                maxLines: 5,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                   hintText: "Experience",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: idproofnumber,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Id proof Number !";
                  }
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Id Proof Number",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              TextFormField(
                controller: phonenumber,
                validator: (value){
                  if (value!.isEmpty){
                    return "Empty Phone Number !";
                  }
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
                width: 120,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate())
                  babysitterReg();

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text("submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
