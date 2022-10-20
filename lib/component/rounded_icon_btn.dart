import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: Colors.white),
          onPressed:onPressed,
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ));
  }
}