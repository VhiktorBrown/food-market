class Slider {
  String image;
  String description;

  Slider({
    required this.image,
    required this.description
});
}

List<Slider> slides = [

  Slider(
    image: "assets/images/harmburger.png",
    description: "Food right at your fingertips."
  ),
  Slider(
    image: "assets/images/breakfast.png",
    description: "Order now and get food delivered ASAP"
  )
];