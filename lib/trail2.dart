import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foodtrail extends StatefulWidget {
  const Foodtrail({super.key});

  @override
  State<Foodtrail> createState() => _FoodtrailState();
}

class _FoodtrailState extends State<Foodtrail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,toolbarHeight: 100,),
      body:ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index,) {

        return  SingleChildScrollView(
          // color: Colors.grey.shade100,
          // height: 900,width: double.infinity,
          child: Column(
            children: [
Text("06/12/2024"),
              Text(
                "Monday",
                style: TextStyle(color: Colors.black),
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
                "Wednesday",
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
