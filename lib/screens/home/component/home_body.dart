import 'package:ecommerce_practice_ui/screens/home/component/categories.dart';
import 'package:ecommerce_practice_ui/screens/home/component/discount_banner.dart';
import 'package:ecommerce_practice_ui/screens/home/component/home_header.dart';
import 'package:ecommerce_practice_ui/screens/home/component/section_title.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),

            Column(
              children: [
                SectionTitle(
                  text: "Special for you",
                  onPressed: (){

                  },
                ),
                SizedBox(height: getProportionateScreenWidth(20),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialOfferCard(
                        image: "assets/images/Image Banner 2.png",
                        category: "Smartphone",
                        numOfBrands: 18,
                        onPressed: (){

                        },
                      ),
                      SpecialOfferCard(
                        image: "assets/images/Image Banner 3.png",
                        category: "Fashion",
                        numOfBrands: 24,
                        onPressed: (){

                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.onPressed,
  }) : super(key: key);

  final String category,image;
  final int numOfBrands;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(image,
                fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15)
                      ]
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10)
                  ),
                  child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text: "$numOfBrands Brands"
                          )
                        ]
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


