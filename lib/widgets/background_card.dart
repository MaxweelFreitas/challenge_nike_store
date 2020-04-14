import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double cardBorderRadius = size.height * 0.05;
    return Container(
      height: size.height * 0.28,
      width: size.width * 0.96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(cardBorderRadius),
          bottomRight: Radius.circular(cardBorderRadius),
        ),
      ),
    );
  }
}
