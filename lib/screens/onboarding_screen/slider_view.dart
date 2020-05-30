import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcdonaldui/models/slider_model.dart';
import 'package:mcdonaldui/widgets/bezier_curve.dart';

class SliderView extends StatelessWidget {

  int index;

  SliderView({this.index});

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment.topCenter,
                child: Image.asset(
                    'assets/logo.png'
                ),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(
                            child: SvgPicture.asset(
                                sliderList[index].svg
                            ),
                            margin: EdgeInsets.only(bottom: 30, top: 110),
                          ),
                          Text(
                            sliderList[index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            sliderList[index].subtitle,
                            style: TextStyle(
                                fontSize: 15
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}