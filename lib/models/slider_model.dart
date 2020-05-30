import 'package:mcdonaldui/screens/onboarding_screen/slider_view.dart';

class SlideViewModel {
  String title;
  String subtitle;
  String svg;

  SlideViewModel({this.title, this.subtitle, this.svg});
}

var sliderList = [
  SlideViewModel(
      title: "Get what you love",
      subtitle: "Select from the entire McDonald's menu.",
      svg: "assets/ic_burger.svg"
  ),
  SlideViewModel(
      title: "Get it the way you love",
      subtitle: "Customize all menu items",
      svg: "assets/ic_glass.svg"
  ),
  SlideViewModel(
      title: "Get it where you are",
      subtitle: "Get delivery from McDonald's stores near you",
      svg: "assets/food_truck.svg"
  )
];