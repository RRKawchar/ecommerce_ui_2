import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +01 888 610 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
               const OtpForm(),

              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("This code will expired in "),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0.0),
            duration: const Duration(seconds: 30),
            builder: (_, value, child) => Text(
              "00:${value.toInt()}",
              style: const TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      );
  }
}
class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode focusNode){

    if(value.length==1){

      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                     decoration: otpInputDecoration,
                    onChanged: (value) {
                     nextField(value, pin2FocusNode!);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value, pin3FocusNode!);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value, pin4FocusNode!);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      pin4FocusNode!.unfocus();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.15),
            DefaultButton(
              text: "Continue",
              pressed: () {},
            )
          ],
        ),
    );
  }
}


