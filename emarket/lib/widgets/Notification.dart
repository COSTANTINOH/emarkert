import 'package:flutter/material.dart';
// import 'package:treva_shop_flutter/ListItem/notificationsData.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  // final List<Post> items = new List();
  @override
  void initState() {
    super.initState();
    // setState(() {
    //   items.add(  Post(
    //       image:"assets/img/Logo.png",
    //       id: 1,
    //       title:"Treva Shop",
    //       desc: "Thanks for downloaded treva shop application"),);
    //   items.add( Post(
    //       image:"assets/img/Logo.png",
    //       id: 2,
    //       title:"Treva Shop",
    //       desc: "Your Item Delivery"),);
    //   items.add( Post(
    //       image:"assets/img/Logo.png",
    //       id: 3,
    //       title:"Treva Shop",
    //       desc: "Pending List Item Shoes"),);
    //   items.add( Post(
    //       image:"assets/img/Logo.png",
    //       id: 4,
    //       title:"Treva Shop",
    //       desc: "Get 10% Discount for macbook pro 2018"),);
    // });
  }

  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Notification",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0, color: Colors.black54, fontFamily: "Gotik"),
          ),
          iconTheme: IconThemeData(
            color: const Color(0xFF6991C7),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: noItemNotifications());
  }
}

// void _onTapItem(BuildContext context, Post post) {
//   Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(post.id.toString() + ' - ' + post.title)));
// }

class noItemNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: mediaQueryData.padding.top + 100.0)),
            Image.asset(
              "assets/img/noNotification.png",
              height: 200.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            Text(
              "Not Have Notification",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.5, color: Colors.black54, fontFamily: "Gotik"),
            ),
          ],
        ),
      ),
    );
  }
}
