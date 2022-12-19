import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_it/models/products_details.dart';

class ProductsPage extends StatelessWidget {
  final ProductsDetails productdetails;

  const ProductsPage({super.key, required this.productdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Description",
          style: GoogleFonts.bebasNeue(fontSize: 52, color: Colors.white),
        )),
        backgroundColor: Color.fromARGB(255, 99, 0, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              productdetails.image,
              width: 200,
              height: 250,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text("Description : ${productdetails.description}"),
            ),
            Text(productdetails.name)
          ],
        ),
      ),
    );
  }
}
