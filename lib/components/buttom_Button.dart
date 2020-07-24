import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttomText, @required this.onTap});

  final String buttomText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttomText, style: kLargeLabelTextStyle),
        ),
        color: kbuttomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbuttomContainerHeight,
      ),
    );
  }
}
