import 'package:ecommerce_practice_ui/screens/profile/components/profile_menu.dart';
import 'package:ecommerce_practice_ui/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          onPressed: (){

          },
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          onPressed: (){

          },
        ),
        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          onPressed: (){

          },
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          onPressed: (){

          },
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          onPressed: (){

          },
        ),
      ],
    );
  }
}


