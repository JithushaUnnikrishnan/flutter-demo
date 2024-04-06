import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AddActivity extends StatefulWidget {
  const AddActivity({super.key});

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(113, 42, 168, 1),
        title: Icon(CupertinoIcons.back),
        toolbarHeight: 104,
      ),

      body: Container(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Date",
                    labelStyle: TextStyle(color:  Colors.grey,)
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Time",
                  labelStyle: TextStyle(color:  Colors.grey,)
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Activity",
                  labelStyle: TextStyle(color: Colors.grey)
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 48,width: 135,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.blue,
                  ),
                  child: Center(child: Text("Done",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 20),)),
                ),
              )
            ],
          ),
        )
      ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1,),
    );
  }
}
