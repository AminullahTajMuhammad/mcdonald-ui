import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonaldui/models/slider_model.dart';
import 'package:mcdonaldui/screens/onboarding_screen/slider_view.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BoardingState();
}

class BoardingState extends State<OnBoardingScreen> {
  int _currentPage;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPage = 0;
  }

  _onPageChanged(int value) {
    setState(() => _currentPage = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, i) => SliderView(index: i) ,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: sliderList.length,
            scrollDirection: Axis.horizontal,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: DotsIndicator(
                  position: _currentPage,
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              _currentPage != sliderList.length - 1
                  ? Container(
                      margin: EdgeInsets.only(top: 20),
                      child: FlatButton(
                        child: Text('Skip'),
                        onPressed: () => { },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                      )
                  )
                  : Container(
                      margin: EdgeInsets.only(top: 20),
                      child: FlatButton(
                        child: Text(
                          'Lets Started',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onPressed: () => {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)
                        ),
                        color: Theme.of(context).primaryColor,
                      )
                  )
            ],
          )
        ],
      ),
    );
  }
}