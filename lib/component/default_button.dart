import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback pressed;
  const DefaultButton({Key? key, required this.text, required this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          onPressed: pressed,
          child: Text(text,style:TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.white
          ),)
      ),
    );
  }
}
