import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/component/rounded_icon_btn.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/screens/details/component/color_dots.dart';
import 'package:ecommerce_practice_ui/screens/details/component/product_descrioption.dart';
import 'package:ecommerce_practice_ui/screens/details/component/product_images.dart';
import 'package:ecommerce_practice_ui/screens/details/component/top_rounded_container.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                Expanded(
                  child: TopRoundedContainer(
                      color: Color(0xFFF6F7F9),

                      child: ColorsDots(product: product)),
                ),

              ],
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20),),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth!*0.15,
              right: SizeConfig.screenWidth!*0.15,
              top: getProportionateScreenWidth(15),
              bottom: getProportionateScreenWidth(40)
            ),
            child: DefaultButton(text: "Add To Cart", pressed: (){}),
          )
        ],
      ),
    );
  }
}
