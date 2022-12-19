import 'package:flutter/material.dart';
import 'package:recycle_it/pages/HomePage.dart';
import 'package:recycle_it/pages/contactus_page.dart';
import 'package:recycle_it/pages/login_page.dart';
import 'package:recycle_it/pages/productsPage.dart';
import 'package:recycle_it/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
