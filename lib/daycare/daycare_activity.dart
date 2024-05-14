import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daycare_addactivity.dart';
import 'package:demo/daycare/daycare_update.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'activityedit.dart';

class DaycareActivity extends StatefulWidget {
  const DaycareActivity({super.key});

  @override
  State<DaycareActivity> createState() => _DaycareActivityState();
}

class _DaycareActivityState extends State<DaycareActivity> {
  int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 10, 100, 1),
          toolbarHeight: 122,
          elevation: 6,
          shadowColor: Colors.grey,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
          title: Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Text(
              "Activity",
              style: GoogleFonts.inriaSerif(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: FutureBuilder(
          future:
              FirebaseFirestore.instance.collection("DaycareActivity").get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text("Error:${snapshot.error}");
            }
            final activity = snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: activity.length,
              itemBuilder: (context, index) {

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Card(

                    color: Colors.red.shade50,
                    child: ListTile(

                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>ActivityEdit(id: activity[index].id,)));
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {
                            setState(() {

                              FirebaseFirestore.instance.collection("DaycareActivity").doc(activity[index].id).delete();
                            });
                          }, icon: Icon(Icons.delete))
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(' Activity Name :'),
                              Text(activity[index]['Activity_name']),
                            ],
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .030),
                          Text(activity[index]['Time']),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .030),
                          Text(activity[index]['date'])
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EditCard()));
            setState(() {
              _itemcount++; // Increase item count on FAB press
            });
          },
          child: const Icon(Icons.add),
        ));
  }
}

class EditCard extends StatefulWidget {
  const EditCard({super.key});

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  final formkey = GlobalKey<FormState>();

  var activty = TextEditingController();

  String select = '';
  String dateselect = '';
  final date = new DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  Future<dynamic> addactivity() async {
    await FirebaseFirestore.instance.collection("DaycareActivity").add({
      "Activity_name": activty.text,
      'Time': time.format(context),
      'date': DateFormat('dd/MM/yyyy').format(date)
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DaycareActivity()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaycareActivity()));
                  },
                  child: Icon(Icons.arrow_back)),
              SizedBox(
                width: 100,
              ),
              Text("Add activity",
                  style: GoogleFonts.ubuntu(color: Color(0xFFC24A6B))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              TextFormField(
                controller: activty,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Activity!";
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Activity Name",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .51,
              ),
              InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      addactivity();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80, bottom: 10),
                    child: Container(
                        height: 53,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green),
                        child: Center(
                          child: Text('Save',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
