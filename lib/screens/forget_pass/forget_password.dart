import 'package:ecommerce_practice_ui/screens/forget_pass/component/forget_body.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  static String routeName="/forget_password";
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title:const Text("Forget Password"),
          ),
      body: ForgetBody(),
    );
  }
}
