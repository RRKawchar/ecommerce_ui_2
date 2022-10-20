
import 'package:ecommerce_practice_ui/component/rounded_icon_btn.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class ColorsDots extends StatelessWidget {
  const ColorsDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            product.color.length,
                (index) => ColorDot(
              color: product.color[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
              icon: Icons.remove,
              onPressed: (){

              }
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconBtn(
              icon: Icons.add,
              onPressed: (){

              }
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.color[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
