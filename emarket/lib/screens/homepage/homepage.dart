import 'package:emarket/library/carousel_pro/carousel_pro.dart';
import 'package:emarket/screens/home/widget/Category.dart';
import 'package:emarket/screens/home/widget/CustomAppBar.dart';
import 'package:emarket/screens/home/widget/FlashSales.dart';
import 'package:emarket/widgets/SmallBanner.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;

  /// ImageSlider in header
  var imageSlider = Container(
    height: 250.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      dotColor: Color(0xFF6991C7).withOpacity(0.8),
      dotSize: 5.5,
      dotSpacing: 16.0,
      dotBgColor: Colors.transparent,
      showIndicator: true,
      overlayShadow: true,
      overlayShadowColors: Colors.white.withOpacity(0.9),
      overlayShadowSize: 0.9,
      images: [
        AssetImage("assets/img/baner1.png"),
        AssetImage("assets/img/baner12.png"),
        AssetImage("assets/img/baner2.png"),
        AssetImage("assets/img/baner3.png"),
        AssetImage("assets/img/baner4.png"),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQueryData.padding.top + 58.5,
                  ),
                ),

                /// Call var imageSlider
                imageSlider,

                /// Call var categoryIcon
                SmallBanner(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                /// Call var categoryIcon
                CategorySection(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                /// Call var a FlashSell, i am sorry Typo :v
                FlashSell(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
              ],
            ),
          ),
          AppbarGradient(),
        ],
      ),
    );
  }
}
