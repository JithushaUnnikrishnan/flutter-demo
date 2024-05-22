import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daybottombutn.dart';
import 'package:demo/daycare/daycare_food.dart';
import 'package:demo/daycare/daycare_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'food_edit.dart';

class DaycareFoodview extends StatefulWidget {
  const DaycareFoodview({super.key});

  @override
  State<DaycareFoodview> createState() => _DaycareFoodviewState();
}

class _DaycareFoodviewState extends State<DaycareFoodview> {
  String? ID;
  String? Name;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      ID = spref.getString("id");
      Name = spref.getString("name");
    });
    print("SharedPreference Data get: $ID");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit",style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromRGBO(117, 10, 100, 1),toolbarHeight: 100,),
        floatingActionButton: Text("Add"),
        body:ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index,) {

            return  SingleChildScrollView(
              // color: Colors.grey.shade100,
              // height: 900,width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("06/12/2024"),
                  Text(
                    "Monday",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunrise,
                      color: Colors.red.shade300,
                    ),
                    title: Text("Breakfast"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sun_max,
                      color: Colors.yellow.shade700,
                    ),
                    title: Text("Lunch"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunset_fill,
                      color: Colors.orangeAccent,
                    ),
                    title: Text("Snack"),
                  ),
                  Text(
                    "Tuesday",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.sunrise, color: Colors.red.shade300),
                    title: Text("Breakfast"),
                  ),
                  ListTile(
                    leading:
                    Icon(CupertinoIcons.sun_max, color: Colors.yellow.shade700),
                    title: Text("Lunch"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunset_fill,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Snack"),
                  ),
                  Text(
                    "Wednesday",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.sunrise, color: Colors.red.shade300),
                    title: Text("Breakfast"),
                  ),
                  ListTile(
                    leading:
                    Icon(CupertinoIcons.sun_max, color: Colors.yellow.shade700),
                    title: Text("Lunch"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunset_fill,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Snack"),
                  ),
                  Text(
                    "Thursday",
                    style: TextStyle(color: Colors.black),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.sunrise, color: Colors.red.shade300),
                    title: Text("Breakfast"),
                  ),
                  ListTile(
                    leading:
                    Icon(CupertinoIcons.sun_max, color: Colors.yellow.shade700),
                    title: Text("Lunch"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunset_fill,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Snack"),
                  ),
                  Text(
                    "Friday",
                    style: TextStyle(color: Colors.black),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.sunrise, color: Colors.red.shade300),
                    title: Text("Breakfast"),
                  ),
                  ListTile(
                    leading:
                    Icon(CupertinoIcons.sun_max, color: Colors.yellow.shade700),
                    title: Text("Lunch"),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sunset_fill,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Snack"),

                  ),
                  Divider(),
                ],
              ),
            );
          },)

    );
  }
}
