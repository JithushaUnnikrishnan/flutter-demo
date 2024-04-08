import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios_sharp,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Done",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Booking Successful",
                    style: TextStyle(
                        color: Color.fromRGBO(147, 181, 210, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    color: Color.fromRGBO(147, 181, 210, 1),size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .010,
              ),
              Container(
                height: 180,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(174, 214, 236, 1),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 1,
                  )
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Dr.Sarah"),
                    Text("October/18/2023"),
                    Text("11:30pm - 3:30pm"),
                    Container(
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * .020,),
                          Text("Parvathy"),
                          Text("3 year old")
                        ],
                      ),



                    )
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
