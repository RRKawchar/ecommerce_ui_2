import 'package:ecommerce_practice_ui/component/custom_suffix_icon.dart';
import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/component/form_error.dart';
import 'package:ecommerce_practice_ui/component/no_account_text.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class ForgetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight!*0.1,),
              Text(
                "Forget Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight!*0.1,),
              ForgetPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey=GlobalKey<FormState>();

  String? email;
  List<String> error = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && error.contains(kEmailNullError)) {
                setState(() {
                  error.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  error.contains(kInvalidEmailError)) {
                setState(() {
                  error.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !error.contains(kEmailNullError)) {
                setState(() {
                  error.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !error.contains(kInvalidEmailError)) {
                setState(() {
                  error.add(kInvalidEmailError);
                });
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                hintText: "Enter Your Email",
                suffixIcon: CustomSuffixIcon(
                  svgIcon: "assets/icons/Mail.svg",
                )),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(error: error),
          SizedBox(height: SizeConfig.screenHeight!*0.1,),
          DefaultButton(
            text: "Continue",
            pressed: () {

              if(_formKey.currentState!.validate()){

              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight!*0.1,),
          NoAccountText()
        ],
      ),
    );
  }
}
