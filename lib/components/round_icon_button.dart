import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onWeightChange;
  RoundIconButton({@required this.icon, @required this.onWeightChange});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onWeightChange,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
