import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double appBarRadius = size.height;
    return Container(
      height: size.height * 0.09,
      width: size.width * 0.81,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(appBarRadius),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Center(
              child: Material(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(size.height),
                ),
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shop),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => print('Add to cart'),
                  child: new Container(
                    child: new Center(
                      child: Text(
                        'Add to cart'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "\$120",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
