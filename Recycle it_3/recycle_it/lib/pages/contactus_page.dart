import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 99, 0, 238),
          title: Center(
            child: Text(
              "Contact Us",
              style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
              // style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/bin.png",
                color: Color.fromARGB(255, 99, 0, 238),
                height: 50,
                width: 50,
              ),
              Text(
                "Hello",
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                  color: Color.fromARGB(255, 99, 0, 238),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "You can contact with as on: ",
                style: GoogleFonts.bebasNeue(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.contact_phone,
                      color: Color.fromARGB(255, 99, 0, 238),
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Text(
                      "(xxx)xxx-xxxx",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.contact_mail,
                      color: Color.fromARGB(255, 99, 0, 238),
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "xxxxxx@gmail.com",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.discord,
                      color: Color.fromARGB(255, 99, 0, 238),
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Text(
                      "xxxxxxx#xxxx",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/instagram_2.png",
                      width: 40,
                      height: 40,
                      color: Color.fromARGB(255, 99, 0, 238),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Text(
                      "Acount: xxxxx",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/Twitter.png",
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 99, 0, 238),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Text(
                      "@xxxxxxxxx",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Help the envirment with using less plastic",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
