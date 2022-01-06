import 'package:emarket/screens/auth/forget_password_screen.dart';
import 'package:emarket/screens/home/home_screen.dart';
import 'package:emarket/utilis/constants/metrics.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

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
              "Login to your account",
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
            SizedBox(
              height: deviceHeight(context) / 30,
            ),
            Padding(
              padding: EdgeInsets.all(deviceHeight(context) / 50),
              child: TextFormField(
                enabled: true,
                decoration: InputDecoration(
                  prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.check,
                      color: Colors.blue,
                    ),
                  ),
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(deviceHeight(context) / 50),
              child: TextFormField(
                enabled: true,
                decoration: InputDecoration(
                  prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                  ),
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
            CheckboxListTile(
              title: Text("Remember Me"),
              value: false,
              onChanged: (newValue) {},
              controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            SizedBox(
              height: deviceHeight(context) / 30,
            ),
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
                    MaterialPageRoute(builder: (context) => HomeScreen()),
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
