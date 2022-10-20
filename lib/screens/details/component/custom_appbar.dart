import 'package:ecommerce_practice_ui/component/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key, required this.rating,
  }) : super(key: key);
  final double rating;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: RoundedIconBtn(
            icon: Icons.arrow_back_ios,
            onPressed:(){
              Navigator.pop(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14)
            ),
            child: Row(
              children: [
                Text(
                  "$rating",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 5,),
                SvgPicture.asset("assets/icons/Star Icon.svg")
              ],
            ),
          ),
        ),
      ],
    );
  }
}