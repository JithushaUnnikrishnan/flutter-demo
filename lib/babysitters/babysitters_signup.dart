import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Container(
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
            SizedBox(height: 10,),

            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Qualification",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Date Of Birth"),
                Container(
                  width: 10,
                  padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey
                      ),
                     borderRadius: BorderRadius.circular(10.0)
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
