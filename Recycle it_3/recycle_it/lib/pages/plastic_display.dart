import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_it/models/plastic_details.dart';
import 'package:recycle_it/pages/plastic_page.dart';

class PlasticDisplay extends StatelessWidget {
  PlasticDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Plastic",
          style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
          // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Color.fromARGB(255, 99, 0, 238),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemCount: PlasticDetails.plasticdetails.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlasticPage(
                                    plasticDetails:
                                        PlasticDetails.plasticdetails[index])));
                      },
                      child: Image(
                        width: 100,
                        image: AssetImage(
                          PlasticDetails.plasticdetails[index].image,
                        ),
                      ),
                    ),
                  ),
                  Text(PlasticDetails.plasticdetails[index].name),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
      ),
      // body: ListView.builder(
      //     itemCount: PlasticDetails.plasticdetails.length,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         height: 100,
      //         width: 100,
      //         child: InkWell(
      //           onTap: (() {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: ((context) {
      //               return PlasticPage(
      //                 plasticDetails: PlasticDetails.plasticdetails[index],
      //               );
      //             })));
      //           }),
      //           child: Card(
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.asset(
      //                   PlasticDetails.plasticdetails[index].image,
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: Text(
      //                     PlasticDetails.plasticdetails[index].name,
      //                     style: TextStyle(
      //                         fontSize: 20, fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //                 // IconButton(onPressed: (){
      //                 //   addItem(),
      //                 // }, icon: Icon(Icons.discount)),
      //               ],
      //             ),
      //           ),
      //         ),
      //       );
      //     })
    );
  }
}
