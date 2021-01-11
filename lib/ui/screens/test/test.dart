import 'package:among_us/configs/colors.dart';
import 'package:among_us/configs/images.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            child: FlipCard(
                back: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 60,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: AppColors.white,
                      ),
                    ),
                    const Image(
                      height: 100,
                      width: 100,
                      image: AppImages.limeDead,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                front: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 60,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: AppColors.white,
                      ),
                    ),
                    const Image(
                      height: 100,
                      width: 100,
                      image: AppImages.lime,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                )),
          ),
        ],
      );
}
