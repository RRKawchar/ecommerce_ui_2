import 'package:ecommerce_practice_ui/component/custom_suffix_icon.dart';
import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/component/form_error.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/screens/complete_profile/components/complete_profile_form.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class FormBody extends StatelessWidget {
  const FormBody({Key? key}) : super(key: key);

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
              Text("Complete Profile", style: headingStyle),
              const Text(
                "Complete your details or continue  \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.06),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


