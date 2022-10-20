import 'package:ecommerce_practice_ui/component/custom_button_navBar.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/enums.dart';
import 'package:ecommerce_practice_ui/screens/home/home_screen.dart';
import 'package:ecommerce_practice_ui/screens/profile/components/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName="/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const ProfileBody(),
      bottomNavigationBar: CustomButtonNavBar(

        selectedMenu: MenuState.profile,
      ),
    );
  }
}


