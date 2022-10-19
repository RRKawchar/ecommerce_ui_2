import 'package:ecommerce_practice_ui/screens/home/component/discount_banner.dart';
import 'package:ecommerce_practice_ui/screens/home/component/home_header.dart';
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
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DiscountBanner(),
            Categories()
          ],
        ),
      ),
    );
  }
}
class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}









