

import 'package:ecommerce_practice_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_practice_ui/screens/forget_pass/forget_password.dart';
import 'package:ecommerce_practice_ui/screens/home/home_screen.dart';
import 'package:ecommerce_practice_ui/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_practice_ui/screens/otp/otp_screen.dart';
import 'package:ecommerce_practice_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_practice_ui/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_practice_ui/screens/splash/splahs_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String,WidgetBuilder> routes={

  SplashScreen.routeName:(context)=>SplashScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),
  ForgetPassword.routeName:(context)=>ForgetPassword(),
  LoginSuccessScreen.routeName:(context)=>LoginSuccessScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  CompleteProfileScreen.routeName:(context)=>CompleteProfileScreen(),
  OtpScreen.routeName:(context)=>OtpScreen(),
  HomeScreen.routeName:(context)=>HomeScreen(),

};