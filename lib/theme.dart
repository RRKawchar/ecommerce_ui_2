import 'package:ecommerce_practice_ui/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),

    primarySwatch: Colors.blue,
  );
}

InputDecorationTheme inputDecorationTheme() {

  OutlineInputBorder outlineInputBorder=OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: kTextColor,
      ),
      gapPadding: 10
  );

  return InputDecorationTheme(
      //floatingLabelBehavior:FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20
      ),
      enabledBorder:outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder
    );
}
TextTheme textTheme(){
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}


AppBarTheme appBarTheme(){
  return const AppBarTheme(
      color: Colors.white,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18));
}