import 'package:flutter/material.dart';

class Demotext extends StatefulWidget {
  const Demotext({super.key});

  @override
  State<Demotext> createState() => _DemotextState();
}

class _DemotextState extends State<Demotext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text('Jithushaunnikrishnan')),
    ),);
  }
}