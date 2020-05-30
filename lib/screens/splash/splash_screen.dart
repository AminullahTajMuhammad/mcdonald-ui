import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mcdonaldui/screens/onboarding_screen/on_boarding_screen.dart';
import 'package:mcdonaldui/widgets/bezier_curve.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:
            (context) => OnBoardingScreen()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: BezierCurve(),
              child: Container(
                height: 450,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Container(
                      child: Image.asset('assets/burger.png'),
                      margin: EdgeInsets.only(top: 10)
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: CircularProgressIndicator(
                        backgroundColor: Theme.of(context).primaryColor,
                      )
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}