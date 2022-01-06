import 'package:emarket/screens/auth/login_screen.dart';
import 'package:emarket/utilis/constants/metrics.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight(context) / 10,
            ),
            Text(
              "MY PLAZA",
              style: TextStyle(
                fontSize: deviceHeight(context) / 30,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) / 80,
            ),
            Text(
              "Welcome To",
              style: TextStyle(
                fontSize: deviceHeight(context) / 40,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) / 80,
            ),
            Text(
              "Ecommerce Online Market",
              style: TextStyle(
                fontSize: deviceHeight(context) / 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceHeight(context) / 20, right: deviceHeight(context) / 20),
              child: Text(
                "Eshop plus plus cargo product here and there welcom no mean",
                style: TextStyle(
                  fontSize: deviceHeight(context) / 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset("assets/images/intro.png"),
            SizedBox(
              width: deviceHeight(context) / 3,
              height: deviceHeight(context) / 15,
              child: FlatButton(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Let\'s Started'),
                    SizedBox(width: deviceHeight(context) / 70),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                color: Color(0xFF534858),
                colorBrightness: Brightness.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
