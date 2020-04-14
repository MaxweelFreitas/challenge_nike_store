import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCardProduct extends StatefulWidget {
  @override
  _CustomCardProductState createState() => _CustomCardProductState();
}

class _CustomCardProductState extends State<CustomCardProduct> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double cardBorderRadius = size.height * 0.05;
    return Container(
      height: size.height * 0.35,
      width: size.width * 0.96,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cardBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.01),
            ),
          ),
        ),
      ),
    );
  }
}
