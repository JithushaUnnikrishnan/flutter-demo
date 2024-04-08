import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/frontpage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .0250,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Admin",
                style: GoogleFonts.inriaSerif(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
