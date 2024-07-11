import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Admin_parentpage.dart';

class Parentview extends StatefulWidget {
  const Parentview({super.key});

  @override
  State<Parentview> createState() => _ParentviewState();
}

class _ParentviewState extends State<Parentview> {
  var ID;

  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      ID = spref.getString("id");
    });
    print("sharedPreference Data get");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("ParentRegister").get(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Color(0xFF0E6174),
            ));
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
          final parentt = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemCount: parentt.length,
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Color(0xFF93B4D1), Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: ClipOval(
                              child: Image.network(
                                parentt[index]["path"],
                                height: 50,
                                width: 50,
                              ),
                            ),
                            title: Text(
                              parentt[index]["Child name"],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    FirebaseFirestore.instance
                                        .collection("ParentRegister")
                                        .doc(parentt[index].id)
                                        .delete();
                                  });
                                },
                                icon: Icon(Icons.delete,
                                    size: 30, color: Colors.red)),
                          ),
                          Divider(color: Colors.grey.shade300),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AdminParent(
                                              id: parentt[index].id)));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "View",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
