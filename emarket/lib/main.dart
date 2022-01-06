import 'package:emarket/screens/splash/index.dart';
import 'package:emarket/utilis/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    return InitAppState();
  }
}

class InitAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      title: 'E-Market',
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("sw", "TZ"),
      ],
      theme: ThemeData(
          brightness: Brightness.light,
          backgroundColor: MyColors.primaryDark3,
          primaryColorLight: MyColors.primaryDark3,
          primaryColorBrightness: Brightness.light,
          primaryColor: MyColors.primaryDark3),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
