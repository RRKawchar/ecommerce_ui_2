import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/screens/home/home_screen.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class SuccessBody extends StatelessWidget {
  SuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight! * 0.4,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          Text(
            "Login Success",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(width: SizeConfig.screenWidth!*0.6,),
          DefaultButton(
            text: "GO TO HOME",
            pressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);

            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
