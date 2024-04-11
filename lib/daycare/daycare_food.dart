import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareFood extends StatefulWidget {
  const DaycareFood({super.key});

  @override
  State<DaycareFood> createState() => _DaycareFoodState();
}

class _DaycareFoodState extends State<DaycareFood> {
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
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide.none
                   ),
                   labelText: "BreakFast",
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

                   ),labelText: "Lunch",
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
             Text('Tuesday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     labelText: "BreakFast",
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

                   ),labelText: "Lunch",
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
             Text('Wednesday',style: GoogleFonts.inriaSerif(
               fontSize: 20,),),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderSide: BorderSide.none
                     ),
                     labelText: "BreakFast",
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

                   ),labelText: "Lunch",
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
                     labelText: "BreakFast",
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

                   ),labelText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                     labelText: "Snack",
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
                     labelText: "BreakFast",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,
               shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                     labelText: "Lunch",
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
                     labelText: "Snack",
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
                     labelText: "BreakFast",
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

                   ),labelText: "Lunch",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20)
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*.02,),
             Material(elevation: 4,shadowColor: Colors.black45,
               child: TextFormField(

                 decoration: InputDecoration(
                     labelText: "Snack",
                     labelStyle: GoogleFonts.inriaSerif(color: Colors.grey,fontSize: 20),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none
                   ),

                 ),
               ),
             ),
           ],
         ),
       ),
      ),
    );
  }
}
