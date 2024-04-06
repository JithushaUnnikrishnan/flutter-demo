import 'package:flutter/material.dart';

class ParentBooking extends StatefulWidget {
  const ParentBooking({super.key});

  @override
  State<ParentBooking> createState() => _ParentBookingState();
}

class _ParentBookingState extends State<ParentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(119, 164, 204, 1),
        toolbarHeight: 145,
      ),
    );
  }
}
