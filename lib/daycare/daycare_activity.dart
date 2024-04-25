import 'package:demo/daycare/daycare_addactivity.dart';
import 'package:demo/daycare/daycare_update.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Center(
            child: Text(
              "Activity",
              style: GoogleFonts.inriaSerif(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.red.shade50,
                  child: ListTile(
                    title: Text('Activity $index'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditCard()));
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Activity Name :'),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .030),
                        Text('Time :'),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .030),
                        Text('Date:')
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: _itemcount),
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

class EditCard extends StatelessWidget {
  const EditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.all(40),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            InkWell(onTap:(){},
                child: Icon(Icons.arrow_back)),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Activity",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: "Activity Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: TextButton(
                      onPressed: () async {
                        TimeOfDay? timepick = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.input,
                        );
                        if (timepick != null) {
                          print(
                              "time selected:${timepick.hour}:${timepick.minute}");
                        }
                      },
                      child: Icon(Icons.schedule,color: Colors.black,)),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: "Time",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: "Date",
                suffixIcon: TextButton(
                    onPressed: () async {
                      DateTime? datepick = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025));
                      if (datepick != null) {
                        print(
                            'Date selected:${datepick.day}-${datepick.month}-${datepick.year}');
                      }
                    },
                    child: Icon(Icons.date_range,color: Colors.black,)),
              )),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.1,),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left:80,bottom: 10),
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
    );
  }
}
