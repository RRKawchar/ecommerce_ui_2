import 'package:ecommerce_practice_ui/component/custom_suffix_icon.dart';
import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/component/form_error.dart';
import 'package:ecommerce_practice_ui/component/social_card.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenWidth!*0.02,),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenWidth!*0.08,),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenWidth!*0.08,),
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
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}

