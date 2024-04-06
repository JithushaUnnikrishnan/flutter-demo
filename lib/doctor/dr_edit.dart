import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorEdit extends StatefulWidget {
  const DoctorEdit({super.key});

  @override
  State<DoctorEdit> createState() => _DoctorEditState();
}

class _DoctorEditState extends State<DoctorEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 116,
        backgroundColor: Color.fromRGBO(
          147,
          180,
          209,
          1,
        ),
        title: Icon(Icons.arrow_back_ios_sharp),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 30,),

           Row(
             children: [
               Text("Visiting Time"),
               SizedBox(width: 55,),
               Icon(Icons.edit,color: Colors.grey,)
             ],
           ) ,
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),

            ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("qualification"),
                  SizedBox(width: 55,),
                  Icon(Icons.edit,color: Colors.grey,)
                ],
              ) ,
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),

              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Specialization"),
                  SizedBox(width: 55,),
                  Icon(Icons.edit,color: Colors.grey,)
                ],
              ) ,
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),

              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Home Address"),
                  SizedBox(width: 55,),
                  Icon(Icons.edit,color: Colors.grey,)
                ],
              ) ,
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),

              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Office Address"),
                  SizedBox(width: 55,),
                  Icon(Icons.edit,color: Colors.grey,)
                ],
              ) ,
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),

              ),
             SizedBox(height: 15),
             GestureDetector(
               onTap: (){},
               child: Center(
                 child: Container(
                   height: 50,
                   width: 100,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                     color: Colors.blue
                   ),
                   child: Center(child: Text("Update",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white),)),
                 ),
               ),
             )

          ],),
        ),
      ),
    );
  }
}
