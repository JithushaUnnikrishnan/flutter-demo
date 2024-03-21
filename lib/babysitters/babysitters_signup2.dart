import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BabysitterSignup2 extends StatefulWidget {
  const BabysitterSignup2({super.key});

  @override
  State<BabysitterSignup2> createState() => _BabysitterSignup2State();
}

class _BabysitterSignup2State extends State<BabysitterSignup2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor:Colors.white ,
            child: Image.asset('assets/logo.png'),
            
          ),
          
        ),

        title: Center(
            child: Text(
          "TinyTots Care",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
          ),
        )),
        backgroundColor: Color.fromRGBO(56, 127, 142, 1),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 550,),
            ElevatedButton(onPressed: (){}, child: Text("Submit"),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),)
          ],
        ),
      ),
    );
  }
}
