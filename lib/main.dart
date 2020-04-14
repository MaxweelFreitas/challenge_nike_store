import 'package:challenge_nike_store/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set defaults to system colors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBar
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      //navigationBar color
      systemNavigationBarColor: const Color(0XFFE5EFF5), //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    //Orientations configs of app
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge Nike Store',
      home: Home(),
    );
  }
}
