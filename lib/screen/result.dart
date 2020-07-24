import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusableContainer.dart';
import '../components/buttom_Button.dart';

class ResultBMI extends StatelessWidget {
  ResultBMI({
    @required this.BMIResult,
    @required this.getResult,
    @required this.interpretation,
  });

  final String BMIResult;
  final String getResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kactiveCardColor,
              cardChild: Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      getResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      BMIResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ButtomButton(
            buttomText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
