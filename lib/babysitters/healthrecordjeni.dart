import 'package:demo/babysitters/healthrecordView.dart';
import 'package:demo/babysitters/mychildren%20home%20daily%20helth%20buton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthRecord extends StatefulWidget {
  const HealthRecord({super.key});

  @override
  State<HealthRecord> createState() => _HealthRecordState();
}

class _HealthRecordState extends State<HealthRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Column(
          children: [
            Row(
              children: [

                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/girl.png'),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Jeni',style: GoogleFonts.inriaSerif(fontSize: 20),),
                    subtitle: Text('Female',style: GoogleFonts.inriaSerif(fontSize: 20),),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*.1,
              width:MediaQuery.of(context).size.width*.14),
              Text(
                'Height',
                style: GoogleFonts.inriaSerif(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
                SizedBox(height:MediaQuery.of(context).size.height*.024,),
              Text(
                'Weight',
                style: GoogleFonts.inriaSerif(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
                SizedBox(height:MediaQuery.of(context).size.height*.024,),
              Text(
                'Growth Rate',
                style: GoogleFonts.inriaSerif(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
                SizedBox(height:MediaQuery.of(context).size.height*.024,),
              Text(
                'Temperature',
                style: GoogleFonts.inriaSerif(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
        SizedBox(height:MediaQuery.of(context).size.height*.034,),
              Center(child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthView()));
              }, child: Text('Done',style: GoogleFonts.inriaSerif(fontSize:15,color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,))
              ) ],
          ),
        ),
      ),
    );
  }
}
