import 'package:emarket/utilis/constants/metrics.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key key}) : super(key: key);

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
            PinEntryTextField(
              fields: 6,
              showFieldAsBox: true,
              onSubmit: (String pin) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pin"),
                        content: Text('Pin entered is $pin'),
                      );
                    }); //end showDialog()
              }, // end onSubmit
            ),
            SizedBox(
              height: deviceHeight(context) / 10,
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
                    MaterialPageRoute(builder: (context) => OTPScreen()),
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
