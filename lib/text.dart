import 'package:flutter/material.dart';

class Demotext extends StatefulWidget {
  const Demotext({super.key});

  @override
  State<Demotext> createState() => _DemotextState();
}

class _DemotextState extends State<Demotext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Jithushaunnikrishnan')),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(100),
        color: Color.fromARGB(255, 233, 228, 228),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data",selectionColor: Colors.amber,),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),

            ElevatedButton(onPressed:(){}, child: Text("done",selectionColor: Colors.blueGrey))
            
          ],
        ),
      ),
    );
  }
}
