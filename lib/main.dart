import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/routs.dart';
import 'package:ecommerce_practice_ui/screens/home/home_screen.dart';
import 'package:ecommerce_practice_ui/screens/otp/otp_screen.dart';
import 'package:ecommerce_practice_ui/screens/splash/splahs_screen.dart';
import 'package:ecommerce_practice_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Practice ui',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}



