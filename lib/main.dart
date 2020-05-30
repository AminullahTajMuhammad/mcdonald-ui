import 'package:flutter/material.dart';
import 'package:mcdonaldui/constants/constants.dart';
import 'screens/splash/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Constants.BACKGROUND_COLOR,
        accentColor: Colors.white
      ),
      home: SplashScreen(),
    );
  }
}
