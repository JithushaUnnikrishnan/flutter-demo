import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BabysitterFoodmenu extends StatefulWidget {
  const BabysitterFoodmenu({super.key});

  @override
  State<BabysitterFoodmenu> createState() => _BabysitterFoodmenuState();
}

class _BabysitterFoodmenuState extends State<BabysitterFoodmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width *.88,
              height: MediaQuery.of(context).size.height*.055,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text('Plan',style: GoogleFonts.inriaSerif(fontSize: 20
                ),),
              ),
            ),
          )
        ],
      ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('MON'),
                        Text('1')
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('TUE'),
                        Text('2')
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('WED'),
                        Text('3')
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('THUR'),
                        Text('4')
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('FRI'),
                        Text('5')
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Text('SAT'),
                        Text('6')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:50,),
            Row(
              children: [
                Container(
                  width: 410,
                  height: 40,
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text('Monday'),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('BreakFast'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.23),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mango Juice'),
                          Text('Pancake'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('Lunch'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Chicken Biriyani'),
                          Text('Salad'),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('Evening Snack'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Horlicks'),
                          Text('Biscuits',style: TextStyle(),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:50,),
            Row(
              children: [
                Container(
                  width: 410,
                  height: 40,
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text('Tuesday'),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('BreakFast'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.23),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Milk'),
                          Text('Bread Toest'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('Lunch'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Curd Rice '),
                          Text('Salad'),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Column(
                        children: [
                          Text('Evening Snack'),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Boost'),
                          Text('Banana',style: TextStyle(),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )

          ],
        )
    );
  }
}
