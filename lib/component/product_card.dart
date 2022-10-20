import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width=140,
    this.aspectRatio=1.02,
    required this.product,
    required this.onPressed
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.image[0]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){


                    },
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                          color:product.isFavorite?kPrimaryColor.withOpacity(0.15):
                          kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavorite?
                        Color(0xFFFF4848):
                        Color(0xFFDBDEE4),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}