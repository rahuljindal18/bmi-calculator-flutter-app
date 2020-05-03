import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onButtonTap;
  final String label;

  BottomButton({@required this.label, @required this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
