import 'package:ecommerce_practice_ui/screens/otp/components/otp_body.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:ecommerce_practice_ui/test.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName="/otp";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body:OtpBody(),
    );
  }
}
