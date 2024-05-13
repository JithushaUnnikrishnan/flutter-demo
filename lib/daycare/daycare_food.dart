import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/DAycarefoodview.dart';
import 'package:demo/daycare/daybottombutn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareFood extends StatefulWidget {
  const DaycareFood({super.key});

  @override
  State<DaycareFood> createState() => _DaycareFoodState();
}

class _DaycareFoodState extends State<DaycareFood> {
  var breakfast = TextEditingController();
  var lunch = TextEditingController();
  var snack = TextEditingController();



  Future<dynamic> DAycarefd() async {
    await FirebaseFirestore.instance.collection("DaycareFood").add({
      "BreakFast": breakfast.text,
      "Lunch": lunch.text,
      "Snack":snack.text,

    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DaycareFoodview()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 10, 100, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Center(
          child: Text(
            "Food",
            style: GoogleFonts.inriaSerif(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Monday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 controller: breakfast,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide.none
                   ),
                   hintText: "BreakFast",
                   labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(
controller: lunch,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
controller: snack,
                 decoration: InputDecoration(

                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),
                     hintText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Text('Tuesday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 controller: breakfast,
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     hintText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(

                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),
                     hintText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Text('Wednesday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     hintText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(

                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),
                     labelText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Text('Thursday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     hintText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   hintText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),

                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Text('Friday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     hintText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   hintText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),

                 ),
               ),
             ),
             Text('Saturday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     hintText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none

                   ),hintText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                   hintText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),

                 ),
               ),
             ),
             SizedBox(height: 20,),
             Center(child: ElevatedButton(onPressed: (){
              DAycarefd();
             }, child: Text('Done',style: GoogleFonts.inriaSerif(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),)),
             SizedBox(height: 30,),
           ],
         ),
       ),
      ),
    );
  }
}
