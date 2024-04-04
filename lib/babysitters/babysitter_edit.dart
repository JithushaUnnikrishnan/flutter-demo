import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BabysitterEdit extends StatefulWidget {
  const BabysitterEdit({super.key});

  @override
  State<BabysitterEdit> createState() => _BabysitterEditState();
}

class _BabysitterEditState extends State<BabysitterEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                child: Image.asset("assets/teacher.png"),
                height: 49,
                width: 35,
              ),
              title: Text(
                "Dayana",
                style: GoogleFonts.inriaSerif(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Female",
                style: GoogleFonts.inriaSerif(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: TextFormField(
                maxLines: 2,
                minLines: 2,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Occupation"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone Number"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Whatsapp Number"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Update",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 20),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,)
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(
        255,
        252,
        250,
        1,
      ),
    );
  }
}
