import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CodesPage extends StatelessWidget {
  const CodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 99, 0, 238),
          title: Center(
            child: Text(
              "Codes",
              style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
              // style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
