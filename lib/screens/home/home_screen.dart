import 'package:ecommerce_practice_ui/component/custom_button_navBar.dart';
import 'package:ecommerce_practice_ui/enums.dart';
import 'package:ecommerce_practice_ui/screens/home/component/home_body.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName="/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomButtonNavBar(selectedMenu:
        MenuState.home
        ,),
    );
  }
}
