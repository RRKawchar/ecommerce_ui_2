import 'package:ecommerce_practice_ui/screens/splash/component/body.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName="/Splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
