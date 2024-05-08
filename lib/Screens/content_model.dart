class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Order for Food',
      image: 'assets/images/Frame.png',
      discription: "Order all the food you want from Coffee Shop Factory"),
  UnbordingContent(
      title: 'Easy Payment',
      image: 'assets/images/Group 4.png',
      discription:
          "At Coffee Shop, past has an easy and reliable payment without any risk"),
  UnbordingContent(
      title: 'Fast Delivery',
      image: 'assets/images/Group 5.png',
      discription: "We'll make the delivery wherever you are"),
];
