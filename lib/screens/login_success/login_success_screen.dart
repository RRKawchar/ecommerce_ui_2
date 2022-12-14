import 'package:ecommerce_practice_ui/screens/login_success/components/success_body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName="/login_success";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Login Success"
        ),
      ),
      body: SuccessBody(),
    );
  }
}
