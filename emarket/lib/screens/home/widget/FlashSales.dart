import 'package:emarket/library/countdown/src/countdown_base.dart';
import 'package:emarket/widgets/FlashSalesItem.dart';
import 'package:emarket/widgets/product.dart';
import 'package:flutter/material.dart';

class FlashSell extends StatelessWidget {
  const FlashSell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    /// Declare device Size
    var deviceSize = MediaQuery.of(context).size;
    var hourssub, minutesub, secondsub;

    /// CountDown for timer
    CountDown hours, minutes, seconds;
    int hourstime, minute, second = 0;

    return Container(
      height: 300.0,

      /// To set FlashSale Scrolling horizontal
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Flash Sales",
                  style: TextStyle(
                    fontFamily: "Popins",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontFamily: "Popins",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 20.0, bottom: 2.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ProductCard(
                  image: "assets/imgItem/mackbook.jpg",
                  title: "Apple Macbook Pro 13 with Touch Bar",
                  // normalprice: "\$ 2,020",
                  discountprice: "\$ 1,300",
                  ratingvalue: "(56)",
                  place: "Kenya",
                  colorLine: 0xFFFFA500,
                  widthLine: 50.0,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                ProductCard(
                  image: "assets/imgItem/flashsale2.jpg",
                  title: "7 Level Karina Dress Sweet Pesta",
                  // normalprice: "\$ 14",
                  discountprice: "\$ 10",
                  ratingvalue: "(16)",
                  place: "Kenya",
                  colorLine: 0xFF52B640,
                  widthLine: 100.0,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                ProductCard(
                  image: "assets/imgItem/flashsale3.jpg",
                  title: "Samsung Galaxy Note 9 8GB - 512GB",
                  // normalprice: "\$ 1,000",
                  discountprice: "\$ 950",
                  ratingvalue: "(20)",
                  place: "Kenya",
                  colorLine: 0xFF52B640,
                  widthLine: 90.0,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                ProductCard(
                  image: "assets/imgItem/flashsale4.jpg",
                  title: "Harry Potter Spesial Edition ",
                  // normalprice: "\$ 25",
                  discountprice: "\$ 20",
                  ratingvalue: "(22)",
                  place: "Kenya",
                  colorLine: 0xFFFFA500,
                  widthLine: 30.0,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                ProductCard(
                  image: "assets/imgItem/flashsale5.jpg",
                  title: "Pro Evolution Soccer 2019 Steam Original PC Games",
                  // normalprice: "\$ 50",
                  discountprice: "\$ 30",
                  ratingvalue: "(10)",
                  place: "Kenya",
                  colorLine: 0xFF52B640,
                  widthLine: 100.0,
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
