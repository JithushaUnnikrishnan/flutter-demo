import 'package:demo/babysitters/babysitters_signup2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('assets/logo.png'),
          ),
        ),
        title: Center(
            child: Text(
          "TinyTots Care",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        )),
        backgroundColor: Color.fromRGBO(56, 127, 142, 1),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Address",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Qualification",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Date Of Birth",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Experiance",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Id Proof Number",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child:Container(
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.back,color: Colors.black,),
                  ),
                )),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BabysitterSignup2()));
                      },
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}
