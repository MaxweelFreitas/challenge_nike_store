import 'package:flutter/material.dart';

class ItemPageView extends StatefulWidget {
  @override
  _ItemPageViewState createState() => _ItemPageViewState();
}

class _ItemPageViewState extends State<ItemPageView>
    with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animationProduct1;
  Animation<double> animationProduct2;

  static const String imgPathProduct1 = 'https://i.imgur.com/jfs2PzA.png';
  static const String imgPathProduct2 = 'https://i.imgur.com/1QqdfkI.png';

  @override
  void initState() {
    super.initState();

    animController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    final curvedProduct1 = CurvedAnimation(
      parent: animController,
      curve: Curves.ease,
      //reverseCurve: Curves.easeIn,
    );
    animationProduct1 = Tween<double>(
      begin: 0.5,
      end: 1,
    ).animate(curvedProduct1)
      ..addListener(() {
        setState(() {});
      });

    final curvedProduct2 = CurvedAnimation(
      parent: animController,
      curve: Curves.ease,
      //reverseCurve: Curves.easeIn,
    );
    animationProduct2 = Tween<double>(
      begin: 1,
      end: 0.6,
    ).animate(curvedProduct2)
      ..addListener(() {
        setState(() {});
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.height * 0.035),
      height: size.height * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              animController.forward();
            },
            child: Opacity(
              opacity: animationProduct1.value,
              child: Image.network(
                imgPathProduct1,
                height: (size.height * 0.55) * (animationProduct1.value),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.15,
          ),
          GestureDetector(
            onTap: () {
              animController.reverse();
            },
            child: Opacity(
              opacity: animationProduct2.value,
              child: Image.network(
                imgPathProduct2,
                height: (size.height * 0.5) * (animationProduct2.value),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
