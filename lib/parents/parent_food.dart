import 'package:demo/parents/parent_bottombuton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentFood extends StatefulWidget {
  const ParentFood({super.key});

  @override
  State<ParentFood> createState() => _ParentFoodState();
}

class _ParentFoodState extends State<ParentFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Color.fromRGBO(254, 231, 127, 1),
              ),
              height: 257,width: 410,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 110,left: 15),
                child: Row(
                  children: [

                    InkWell(onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PBottomButton()));
                    },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset('assets/food1.png'),
                    Text('Food',
                        style: GoogleFonts.irishGrover(
                            fontSize: 60,
                            color: Color.fromRGBO(211, 134, 64, 1))),
                  ],

                ),
              ),

            ),

            Positioned(
                left: 15,
                top: 160,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * .800,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45,
                              )
                            ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * .930,
                          child: Column(

                            children: [
                              SizedBox(
                                width:
                                MediaQuery.of(context).size.width * .055,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 60),),
                                  Text('Monday',
                                      style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                ],
                              ),
                              Row(children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .045,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)),
                                  height: 65,
                                  width: 105,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('oats,milk'),
                                      Text('banana'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.045
                                  ,),
                                Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                  height: 65,width: 105,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Brown rice,'),
                                      Text('rasam&curd'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.045
                                  ,),
                                Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                  height: 65,width: 105,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Long cut'),
                                      Text('apples'),
                                    ],
                                  ),
                                )
                              ]),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),),
                                  Text('Tuesday',style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [

                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('oats,milk'),
                                        Text('banana'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Brown rice,'),
                                        Text('rasam&curd'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Long cut     '),
                                        Text('banana piece'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .015,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Wednesday',style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('oats,milk'),
                                        Text('banana'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Brown rice,'),
                                        Text('rasam&curd'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Egg & Milk'),
                                        Text('apples'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .015,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),),
                                  Text('Thursday',style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('oats,milk'),
                                        Text('banana'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Brown rice,'),
                                        Text('rasam&curd'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('banana  with'),
                                        Text('peanut butter'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .015,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),),
                                  Text('Friday',style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('oats,milk'),
                                        Text('banana'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Brown rice,'),
                                        Text('rasam&curd'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Egg & Milk'),
                                        Text('apples'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .015,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),),
                                  Text('Saturday',style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('oats,milk'),
                                        Text('banana'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Brown rice,'),
                                        Text('rasam&curd'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*.045
                                    ,),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    height: 65,width: 105,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('juice&fruits'),
                                        Text('milk'),
                                      ],
                                    ),
                                  )
                                ],
                              ),


                            ],
                          )),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                )),
            Positioned(
                left: 38,
                top: 135,
                child: Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * .050,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45
                            )
                          ],
                            color: Color.fromRGBO(242, 215, 133, 1),
                            borderRadius: BorderRadius.circular(10), ),
                        width: MediaQuery.of(context).size.width * .250,
                      child: Center(child: Text('Breakfast', style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .03,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * .050,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black45
                              )
                            ],
                            color: Color.fromRGBO(242, 215, 133, 1,),
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width * .250,
                      child: Center(child: Text('Lunch', style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .03,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * .050,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 215, 133, 1,),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width * .250,
child: Center(child: Text('Snack', style: GoogleFonts.inriaSerif(fontSize: 20,fontWeight:FontWeight.bold))),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
