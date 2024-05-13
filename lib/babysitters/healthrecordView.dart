import 'package:demo/babysitters/healthrecordjeni.dart';
import 'package:demo/babysitters/mychildren%20home%20daily%20helth%20buton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthView extends StatefulWidget {
  const HealthView({super.key});

  @override
  State<HealthView> createState() => _HealthViewState();
}

class _HealthViewState extends State<HealthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Row(children: [
          InkWell(onTap: (){
            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MychildrenHome()));
          },
              child: Icon(Icons.arrow_back)),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text("Health Record",style: GoogleFonts.ubuntu( color: Color(0xFFC24A6B))),
          ),
        ],)





      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, top: 30, right: 50),
          child: Column(

            children: [
              Row(

                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Height",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Weight",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Growth Rate ",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Temperature",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "90cm",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        " 14.29kg",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Normal ",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Normal",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 90),
                child: InkWell(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HealthRecord()));
                },
                  child: Container(
                    child: Center(
                        child: Text("Add ",
                            style: GoogleFonts.ubuntu(
                                color: Colors.white, fontSize: 20))),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF3FA035),
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
