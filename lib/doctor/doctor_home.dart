import 'package:flutter/material.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({super.key});

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: 360,
              height: 104,
              decoration: const BoxDecoration(color: Color.fromRGBO(147, 180, 209, 1,),),
              child: Row(
                children: [
                  Material(
                    elevation:4,
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(147, 180, 209, 1,),
                      ),
                      child: const Text("Logout"),
                    ),
                  )
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
