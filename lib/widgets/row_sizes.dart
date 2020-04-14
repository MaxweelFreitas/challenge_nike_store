import 'package:flutter/material.dart';

class RowSizes extends StatefulWidget {
  @override
  _RowSizesState createState() => _RowSizesState();
}

class _RowSizesState extends State<RowSizes> {
  List<String> sizes = ['S', 'M', 'L', 'XL', '2XL', '3XL'];
  List<bool> _selections = List.generate(6, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ToggleButtons(
          children: [
            for (var i = 0; i < _selections.length; i++)
              Text(
                sizes[i],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
          focusColor: Colors.white,
          splashColor: Colors.white,
          color: Colors.black38,
          selectedColor: Colors.black,
          fillColor: Colors.white,
          renderBorder: false,
          isSelected: _selections,
          onPressed: (int index) {
            setState(() {
              _selections[index] = !_selections[index];
              for (int i = 0; i < _selections.length; i++) {
                i == index ? _selections[i] = true : _selections[i] = false;
              }
            });
          },
        ),
      ],
    );
  }
}
