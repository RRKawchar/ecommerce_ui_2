import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.black),
          ),
          GestureDetector(
            onTap: (){

            },
            child: Text("See More"),
          )
        ],
      ),
    );
  }
}