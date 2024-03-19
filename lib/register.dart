import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TinyTots Care")),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),labelText: 'Name'
              ),
            ),
            SizedBox(
              height: 10,),
            TextFormField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),labelText: 'Address'
              ),
            ),
            SizedBox(
              height: 10,),
            TextFormField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),labelText: 'Pin Code'
              ),
            ),
            SizedBox(
              height: 10,),
            TextFormField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),labelText: 'Phone Number'
              ),
            ),
            SizedBox(
              height: 30,),
            TextFormField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),labelText: 'WhatsApp'
              ),
            ),
            SizedBox(
              height: 30,),
            TextFormField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),labelText: 'Email'
              ),
            ),


          ],
        ),
      ),
    );
  }
}
