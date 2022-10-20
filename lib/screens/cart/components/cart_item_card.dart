import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/cart.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(cart.product.image[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cart.product.title,maxLines: 2,
              style: TextStyle(
                fontSize: 16,color: Colors.black,

              ),),
            const SizedBox(height: 10,),
            Text.rich(
                TextSpan(
                    text: "\$${cart.product.price}",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                    children: [
                      TextSpan(
                          text: "x${cart.numOfItems}",
                          style: TextStyle(
                              color: kTextColor
                          )
                      )
                    ]
                )
            )
          ],
        )
      ],
    );
  }
}