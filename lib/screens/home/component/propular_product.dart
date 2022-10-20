import 'package:ecommerce_practice_ui/component/product_card.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/screens/details/details_screen.dart';
import 'package:ecommerce_practice_ui/screens/home/component/section_title.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class PropulaProduct extends StatelessWidget {
  const PropulaProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", onPressed: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  onPressed: (){
                    Navigator.pushNamed(context, DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(
                        product: demoProducts[index]
                    )
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
