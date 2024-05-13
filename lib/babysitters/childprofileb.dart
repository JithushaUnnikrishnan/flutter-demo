import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:demo/babysitters/jeni_profiledaily.dart';
import 'package:demo/babysitters/mychildren%20home%20daily%20helth%20buton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherChildprofile extends StatefulWidget {
  const TeacherChildprofile({super.key});

  @override
  State<TeacherChildprofile> createState() => _TeacherChildprofileState();
}

class _TeacherChildprofileState extends State<TeacherChildprofile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomButton()));
        }, icon: Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("My Children",style: GoogleFonts.ubuntu( color: Color(0xFFC24A6B))),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/kid.png"),
                height: 92,
                width: 60,
              ),
              title: Text("jeni"),
              subtitle: Text("Female"),
              trailing:   InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MychildrenHome()));
              },
                child: Container(
                  height: 36,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            color: Colors.black45)
                      ]),
                  child: Center(
                      child: Text(
                        "View",
                        style: GoogleFonts.inriaSerif(
                            fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ),
          );
        },
        itemCount: 2,

      ),
      backgroundColor: const Color.fromRGBO(255, 252, 250, 1),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon:Icon(
      //       CupertinoIcons.home,color: Colors.black,),label: "Home" ),
      //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle_fill,color: Colors.black,),label: "Profile"),
      //   ],
      // ),
    );
  }
}
