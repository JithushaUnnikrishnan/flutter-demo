import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/daybottombutn.dart';
import 'package:demo/daycare/daycare_addview.dart';
import 'package:demo/daycare/daycare_stafadd.dart';
import 'package:demo/daycare/daycarestafview.dart';
import 'package:demo/daycare/staffedit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareStaff extends StatefulWidget {
  const DaycareStaff({super.key});

  @override
  State<DaycareStaff> createState() => _DaycareStaffState();
}

class _DaycareStaffState extends State<DaycareStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(117, 10, 100, 1),
            toolbarHeight: 122,
            elevation: 6,
            shadowColor: Colors.grey,
            shape: ContinuousRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80))),
            title: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DayBottomButton()));
                    },
                    child: Icon(Icons.arrow_back)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                ),
                Text(
                  "My Staff",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DaycareStafadd()));
          },
          child: Text("ADD"),
        ),
        body: FutureBuilder(
          future:
              FirebaseFirestore.instance.collection("Daycare AddStaff").get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text("Error:${snapshot.error}");
            }
            final Staff = snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: Staff.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        child: ListTile(
                          title: Text(Staff[index]["Staff Name"],
                              style: GoogleFonts.inriaSerif(
                                  fontSize: 20, color: Colors.black)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Staff[index]["Qualification"], style: GoogleFonts.inriaSerif(
                              )),
                              Text(Staff[index]["Phone"],style: GoogleFonts.inriaSerif(
                              )),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffEdit(id: Staff[index].id,)));
                              }, icon: Icon(Icons.edit),),
                              IconButton(onPressed: (){
                                setState(() {
                                  
                                  FirebaseFirestore.instance.collection("Daycare AddStaff").doc(Staff[index].id).delete();
                                });
                              }, icon: Icon(CupertinoIcons.delete))
                            ],
                          )
                        ),
                      ),
                    ));
              },
            );
          },
        ));
  }
}
