import 'package:ecommerce_practice_ui/screens/home/component/categories.dart';
import 'package:ecommerce_practice_ui/screens/home/component/discount_banner.dart';
import 'package:ecommerce_practice_ui/screens/home/component/home_header.dart';
import 'package:ecommerce_practice_ui/screens/home/component/propular_product.dart';
import 'package:ecommerce_practice_ui/screens/home/component/section_title.dart';
import 'package:ecommerce_practice_ui/screens/home/component/special_offer_card.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Column(
              children: [
                SectionTitle(
                  text: "Special for you",
                  onPressed: () {},
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialOfferCard(
                        image: "assets/images/Image Banner 2.png",
                        category: "Smartphone",
                        numOfBrands: 18,
                        onPressed: () {},
                      ),
                      SpecialOfferCard(
                        image: "assets/images/Image Banner 3.png",
                        category: "Fashion",
                        numOfBrands: 24,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PropulaProduct(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
