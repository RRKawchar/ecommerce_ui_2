import 'package:ecommerce_practice_ui/component/no_account_text.dart';
import 'package:ecommerce_practice_ui/component/social_card.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/screens/forget_pass/forget_password.dart';
import 'package:ecommerce_practice_ui/screens/sign_in/component/signin_form.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04,),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
              const SignInForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    onPressed: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    onPressed: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}


