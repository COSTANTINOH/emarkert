import 'package:emarket/widgets/CategoryIcon.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onClickMenuIcon = () {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => null,
          transitionDuration: Duration(milliseconds: 750),

          /// Set animation with opacity
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          },
        ),
      );
    };

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20.0),
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// Get class CategoryIconValue
          CategoryIconValue(
            tap1: onClickMenuIcon,
            icon1: "assets/img/bag.png",
            title1: "Camera",
            tap2: onClickMenuIcon,
            icon2: "assets/img/bag.png",
            title2: "Food",
            tap3: onClickMenuIcon,
            icon3: "assets/img/bag.png",
            title3: "Handphone",
            tap4: onClickMenuIcon,
            icon4: "assets/img/bag.png",
            title4: "Gamming",
          ),

          Padding(padding: EdgeInsets.only(bottom: 30.0))
        ],
      ),
    );
  }
}
