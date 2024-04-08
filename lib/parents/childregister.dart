import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChildRegister extends StatefulWidget {
  const ChildRegister({super.key});

  @override
  State<ChildRegister> createState() => _ChildRegisterState();
}

class _ChildRegisterState extends State<ChildRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(56, 127, 142, 1),
        title: Column(
          children: [
            Text(
              "Little Kids",
              style: GoogleFonts.inriaSerif(fontSize: 40, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 40,
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Child Name",
                    labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey))
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              TextFormField(
                minLines: 3,
                maxLines: 3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address",
                    labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Pincode",
                    labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              Row(
                children: [

                  Text("Date Of Birth  ",style:GoogleFonts.inriaSerif(fontSize: 20) ,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .002,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .04,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .002,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .04,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .002,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .002,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width * .002,),
                  Container(
                    height: 28,width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Blood Group",
                    labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Parent's Occupation",
                    labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey))
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Image",
                      labelStyle: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.grey))
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .025,),
              InkWell(onTap: (){},
                child: Container(
                  height:MediaQuery.of(context).size.height * .06,width:MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.blueAccent
                  ),
                  child: Center(child: Text("Submit",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
