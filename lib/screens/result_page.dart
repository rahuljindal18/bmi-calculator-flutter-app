import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;

  ResultPage({this.result, this.bmi, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.all(25.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreenAccent),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onButtonTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
