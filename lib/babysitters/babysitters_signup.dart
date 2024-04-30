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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        shadowColor: Colors.black,
        elevation: 10,
        title:  Padding(
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
            SizedBox(height: MediaQuery.of(context).size.height * .025,),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(
              minLines: 5,
              maxLines: 5,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Address",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Qualification",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Daycare Name",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(
              minLines: 5,
              maxLines: 5,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Experiance",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Id Proof Number",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .035,),
            TextFormField(keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone Number",
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),


            const SizedBox(
              height: 30,
              width: 120,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BabysitterLogin()));
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
    );
  }
}
