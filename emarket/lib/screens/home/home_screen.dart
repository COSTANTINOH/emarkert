import 'package:emarket/library/carousel_pro/carousel_pro.dart';
import 'package:emarket/screens/home/widget/Category.dart';
import 'package:emarket/screens/home/widget/CustomAppBar.dart';
import 'package:emarket/screens/home/widget/FlashSales.dart';
import 'package:emarket/screens/homepage/homepage.dart';
import 'package:emarket/widgets/SmallBanner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

    /// Set a type current number a layout class
    Widget callPage(int current) {
      switch (current) {
        case 0:
          return new HomePageScreen();
        case 1:
        // return new brand();
        case 2:
        // return new cart();
        case 3:
          // return new profil();
          break;
        default:
          return HomePageScreen();
      }
    }

    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            textTheme:
                Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Colors.black26.withOpacity(0.15)))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          fixedColor: Color(0xFF6991C7),
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 23.0,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontFamily: "Roboto", letterSpacing: 0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text(
                "Brand",
                style: TextStyle(fontFamily: "Roboto", letterSpacing: 0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                "Cart",
                style: TextStyle(fontFamily: "Roboto", letterSpacing: 0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24.0,
              ),
              title: Text(
                "Acount",
                style: TextStyle(fontFamily: "Roboto", letterSpacing: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
