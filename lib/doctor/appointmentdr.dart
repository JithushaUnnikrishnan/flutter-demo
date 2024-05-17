import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drRequestpage.dart';

class DrAppointments extends StatefulWidget {
  const DrAppointments({super.key});

  @override
  State<DrAppointments> createState() => _DrAppointmentsState();
}

class _DrAppointmentsState extends State<DrAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left:230),
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorRequest()));
          },
            child: Text('Requests',
                style: GoogleFonts.inter(fontSize: 15, color: Colors.white)),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * .15,
        backgroundColor: Color.fromRGBO(
          147,
          180,
          209,
          1,
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title:Text("Jeni",style: TextStyle(fontWeight: FontWeight.bold),) ,
              subtitle: Row(children: [
                Text("3 year old,"),
                Text("Female")

              ],),
              trailing: Text("06/12/2023"),
            ),
          );
        },
      ),
    );
  }
}
