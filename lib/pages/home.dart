import 'package:challenge_nike_store/shared/app_colors.dart';
import 'package:challenge_nike_store/widgets/background_card.dart';
import 'package:challenge_nike_store/widgets/card_content.dart';
import 'package:challenge_nike_store/widgets/custom_app_bar.dart';
import 'package:challenge_nike_store/widgets/custom_bottom_bar.dart';
import 'package:challenge_nike_store/widgets/custom_card_product.dart';
import 'package:challenge_nike_store/widgets/item_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    //Set defaults to system colors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBar
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      //navigationBar color
      systemNavigationBarColor: Colors.black, //const Color(0XFFE5EFF5),
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          //Products view
          Positioned(
            bottom: size.height * 0.34,
            child: ItemPageView(),
          ),

          //BackgroundCard
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.04),
              child: BackgroundCard(),
            ),
          ),

          //Card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.04),
              child: CustomCardProduct(),
            ),
          ),

          //CardContent
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.11),
              child: CardContent(),
            ),
          ),

          //BottomBar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.01),
              child: CustomBottomBar(),
            ),
          ),

          //AppBar
          CustomAppBar(),
        ],
      ),
    );
  }
}
