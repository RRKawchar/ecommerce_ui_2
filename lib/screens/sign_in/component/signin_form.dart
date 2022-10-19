import 'package:ecommerce_practice_ui/component/custom_suffix_icon.dart';
import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/component/form_error.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/screens/forget_pass/forget_password.dart';
import 'package:ecommerce_practice_ui/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool remember=false;
  String? email,password;
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [
  ];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextEmailForm(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildTextPasswordForm(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),

            FormError(error: error),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                const Text("Remember me"),
                const Spacer(),
                GestureDetector(
                   onTap: () => Navigator.pushNamed(
                      context, ForgetPassword.routeName),
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            DefaultButton(
              text: "Continue",
              pressed: () {
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                   Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }

              },
            )
          ],
        ));
  }

  TextFormField buildTextEmailForm() {
    return TextFormField(
      onSaved: (newValue)=>email=newValue,
      onChanged: (value){
        if (value.isNotEmpty && error.contains(kEmailNullError)) {
          setState(() {
            error.remove(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) && error.contains(kInvalidEmailError)){
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
          return "";
        }else if(!emailValidatorRegExp.hasMatch(value) && !error.contains(kInvalidEmailError)){
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
    );
  }

  TextFormField buildTextPasswordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          // removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          // removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          // addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          // addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: "Password",
          hintText: "Enter Your Password",
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}