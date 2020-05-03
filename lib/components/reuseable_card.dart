import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onSelectCard;
  ReusableCard({@required this.colour, this.cardChild, this.onSelectCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelectCard,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
