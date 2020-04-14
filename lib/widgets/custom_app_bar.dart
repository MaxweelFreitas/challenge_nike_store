import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  static const logoImgPath = 'https://i.imgur.com/mUyBzdZ.png';
  static const avatarImgPath = 'https://i.imgur.com/dAEM5HA.png';

  @override
  Widget build(BuildContext context) {
    //Variables
    double statusBarSize = MediaQuery.of(context).padding.top;
    var size = MediaQuery.of(context).size;
    double appBarRadius = size.height * 0.04;
    double size10 = size.height * 0.01;
    double appBarSize = size.height * 0.1;
    double imgSize = size.height * 0.07;

    return Container(
      margin: EdgeInsets.fromLTRB(size10, statusBarSize, size10, 0),
      height: appBarSize,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(appBarRadius),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Center(
              child: Container(
                child: Icon(
                  Icons.short_text,
                  size: imgSize,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Image.network(
                logoImgPath,
                width: size.height * 0.1,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size.height),
                child: Image.network(
                  avatarImgPath,
                  height: imgSize,
                  width: imgSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
