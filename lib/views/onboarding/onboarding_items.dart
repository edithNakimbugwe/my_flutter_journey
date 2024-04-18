class OnBoardingItems {
  final String title;
  final String imageUrl;
  final String text;

  OnBoardingItems(
      {required this.title, required this.imageUrl, required this.text});
}

List<OnBoardingItems> pages = [
  OnBoardingItems(
      title: "First",
      imageUrl: 'assets/images/emoj.jpg',
      text: "Alot of smiley faces .......so .alot of words here"),
  OnBoardingItems(
      title: "Second",
      imageUrl: 'assets/images/feathers.jpg',
      text: "Is it genuine though?we are yet to findout"),
  OnBoardingItems(
      title: "Third",
      imageUrl: 'assets/images/pn.jpg',
      text: "We all hope for the best in whatever we do"),
];
