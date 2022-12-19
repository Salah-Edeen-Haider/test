class PlasticDetails {
  String name;
  String image;

  PlasticDetails({required this.name, required this.image});

  static List<PlasticDetails> plasticdetails = [
    PlasticDetails(name: "Small bottle", image: "assets/images/bottle_1.jpg"),
    PlasticDetails(name: "Medium bottle", image: "assets/images/bottel_2.jpg"),
    PlasticDetails(name: "Large bottle", image: "assets/images/bottel_3.jpg"),
    PlasticDetails(name: "XL bottle", image: "assets/images/bottel_4.jpg"),
    PlasticDetails(name: "Bags", image: "assets/images/bags.jpg"),
    PlasticDetails(name: "Straws", image: "assets/images/strows.jpg"),
    PlasticDetails(name: "Cups", image: "assets/images/cups.jpg"),
    PlasticDetails(name: "Cutlery", image: "assets/images/cutlery.jpg"),
    PlasticDetails(name: "Plates", image: "assets/images/plates.jpg"),
    PlasticDetails(name: "Plates", image: "assets/images/plates.jpg")
  ];
}
