import 'package:flutter/cupertino.dart';

class Menus {
  String name;
  String icon;

  Menus({required this.icon, required this.name});
  static List<Menus> menu = [
    Menus(icon: "assets/icons/puzzle1.png", name: "Settings"),
    // Menus(icon: "assets/icons/puzzle2.png", name: "Register"),
    // Menus(icon: "assets/icons/puzzle2.png", name: "Login"),
    Menus(icon: "assets/icons/puzzle2.png", name: "About"),
    Menus(icon: "assets/icons/puzzle2.png", name: "Recycling"),
    Menus(icon: "assets/icons/puzzle2.png", name: "Discount code"),
    // Menus(icon: "assets/icons/puzzle2.png", name: "SingOut")
  ];
}
