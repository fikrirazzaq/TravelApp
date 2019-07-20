class OnboardPageModel {
  final String imageBackground;
  final String imageIcon;
  final String title;
  final String subTitle;

  OnboardPageModel(
      {this.imageBackground, this.imageIcon, this.title, this.subTitle});
}

List<OnboardPageModel> pages = [
  OnboardPageModel(
      imageBackground: 'images/bg_one.png',
      imageIcon: 'images/icon_one.png',
      title: 'Plan a Trip',
      subTitle:
          'Plan trips to more 50 countries with few taps on your mobile screen.'),
  OnboardPageModel(
      imageBackground: 'images/bg_two.png',
      imageIcon: 'images/icon_two.png',
      title: 'Search Flight',
      subTitle:
          'Hassle-free and quick flight booking to any one of the 50 destinations.'),
  OnboardPageModel(
      imageBackground: 'images/bg_three.png',
      imageIcon: 'images/icon_three.png',
      title: 'Enjoy your Trip',
      subTitle: 'Enjoy your holidays! Don’t forget to relax and take a photo!'),
];
