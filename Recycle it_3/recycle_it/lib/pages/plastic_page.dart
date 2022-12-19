import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_it/models/plastic_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlasticPage extends StatefulWidget {
  final PlasticDetails plasticDetails;

  PlasticPage({super.key, required this.plasticDetails});

  @override
  State<PlasticPage> createState() => _PlasticPageState();
}

class _PlasticPageState extends State<PlasticPage> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    final box = await SharedPreferences.getInstance();

    await box.setInt('count', count);
  }

  Future getSomething() async {
    final box = await SharedPreferences.getInstance();
    final int? tCount = box.getInt('count');

    return tCount;
  }

  void giveSomething() async {
    final box = await SharedPreferences.getInstance();
    await box.setInt('count', count);
  }

  void addItem() {
    setState(() {});
    count++;
  }

  void removeItem() {
    setState(() {});
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Plastic Amount",
          style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
        )),
        backgroundColor: Color.fromARGB(255, 99, 0, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.plasticDetails.image,
              width: 200,
              height: 250,
              fit: BoxFit.contain,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(25),
            //   child: Text("Description : ${plasticDetails.description}"),
            // ),
            Text(widget.plasticDetails.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    addItem();
                  },
                  icon: Icon(Icons.add),
                  color: Color.fromARGB(255, 99, 0, 238),
                  iconSize: 30,
                ),
                Text(
                  '$count',
                  style: TextStyle(fontSize: 25),
                ),
                IconButton(
                  onPressed: () {
                    removeItem();
                  },
                  icon: Icon(Icons.remove),
                  color: Color.fromARGB(255, 99, 0, 238),
                  iconSize: 30,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  giveSomething();
                  print(getSomething());
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
