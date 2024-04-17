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
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 8),
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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Breakfast'),
                      Column(
                        children: [
                          Text('Mango Juice'),
                          Text('Pancakes')
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Breakfast'),
                      Column(
                        children: [
                          Text('Chicken Biriyani '),
                          Text('Salad')
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Evening Snacks'),
                      Column(
                        children: [
                          Text('Horlicks '),
                          Text('Biscuits')
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            )
          )
        ],
      )
    );
  }
}
