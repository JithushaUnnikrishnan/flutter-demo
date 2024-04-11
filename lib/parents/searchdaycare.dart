import 'package:demo/parents/childregister.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchDaycare extends StatefulWidget {
  const SearchDaycare({super.key});

  @override
  State<SearchDaycare> createState() => _SearchDaycareState();
}

class _SearchDaycareState extends State<SearchDaycare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Container(
              height: 42,
              width: 305,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      spreadRadius: 2,
                      color: Colors.black45,
                      blurRadius: 2,
                    ),
                  ],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top:  7),
                child: Text(
                  "Dayare Search",
                  style:
                      GoogleFonts.inriaSerif(fontSize: 15, color: Colors.grey),
                ),
              )),
      SizedBox(width: MediaQuery.of(context).size.width * .095,),
        ],
      ),
body: Container(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 30),
    child: Column(
      children: [
        InkWell(onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChildRegister()));
        },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  color: Colors.black45
                )
              ],
              color: Color.fromRGBO(199, 231, 231, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Little Kids",style: GoogleFonts.inriaSerif(fontSize: 30),),
                Icon(Icons.star,color: Colors.yellow,size: 50,),
                Icon(Icons.star,color: Colors.yellow,size: 50),
                Icon(Icons.star,color: Colors.yellow,size: 50)
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .025,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  color: Colors.black45
              )
            ],
            color: Color.fromRGBO(199, 231, 231, 1),
          ),
          child: Row(

            children: [
              Padding(padding: EdgeInsets.only(left: 25)),
              Text("Sacred",style: GoogleFonts.inriaSerif(fontSize: 30),),
              SizedBox(width: MediaQuery.of(context).size.width * .13,),
              Icon(Icons.star,color: Colors.yellow,size: 50,),
              Icon(Icons.star,color: Colors.white,size: 50),
              Icon(Icons.star,color: Colors.white,size: 50)
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .025,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  color: Colors.black45
              )
            ],
            color: Color.fromRGBO(199, 231, 231, 1),
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 25)),
              Text("Tiny Kids",style: GoogleFonts.inriaSerif(fontSize: 30),),
              SizedBox(width: MediaQuery.of(context).size.width * .05,),
              Icon(Icons.star,color: Colors.yellow,size: 50,),
              Icon(Icons.star,color: Colors.yellow,size: 50),
              Icon(Icons.star,color: Colors.white,size: 50)
            ],
          ),
        )
      ],
    ),
  ),
),
    );
  }
}
