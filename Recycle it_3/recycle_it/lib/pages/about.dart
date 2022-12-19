import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});
  // String content =
  // "The purpose of this application is to reduce plastic pollution by providing people with better and less harmful environmental options, as well as by gathering plastic garbage for recycling to lessen environmental harm.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 99, 0, 238),
        title: Center(
          child: Text(
            "About",
            style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
            // style: TextStyle(
            //     fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/aboutPage.jpg",
              width: 200,
              height: 200,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: Text(
                "The purpose of this application is to reduce plastic pollution by providing people with better and less harmful environmental options, as well as by gathering plastic garbage for recycling to lessen environmental harm.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
