import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_it/pages/productsPage.dart';

import '../models/products_details.dart';

class ProductsDisplay extends StatelessWidget {
  const ProductsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Text(
            "Products",
            style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
            // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Color.fromARGB(255, 99, 0, 238),
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemCount: ProductsDetails.productdetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductsPage(
                                          productdetails: ProductsDetails
                                              .productdetails[index])));
                            },
                            child: Image(
                              width: 100,
                              image: AssetImage(
                                ProductsDetails.productdetails[index].image,
                              ),
                            ),
                          ),
                        ),
                        Center(
                            child: Text(
                                ProductsDetails.productdetails[index].name)),
                      ],
                    );
                  }),
            ),
          ),
        ),
        // body: ListView.builder(
        //     itemCount: ProductsDetails.productdetails.length,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         height: 100,
        //         width: 100,
        //         child: InkWell(
        //           onTap: (() {
        //             Navigator.push(context,
        //                 MaterialPageRoute(builder: ((context) {
        //               return ProductsPage(
        //                 productdetails: ProductsDetails.productdetails[index],
        //               );
        //             })));
        //           }),
        //           child: Card(
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Image.asset(
        //                   ProductsDetails.productdetails[index].image,
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Text(
        //                     ProductsDetails.productdetails[index].name,
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       );
        //     })
      ),
    );
  }
}
