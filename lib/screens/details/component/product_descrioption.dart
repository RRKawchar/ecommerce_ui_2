import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product, required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(

              color:product.isFavorite?

              const Color(0xFFFFE6E6):
              const Color(0xFFF5F5F9),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:product.isFavorite?
              const Color(0xFFFF4848):
              const Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)
          ),
          child: Text(product.description,maxLines: 3,),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: 10
          ),
          child: GestureDetector(
            onTap: (){

            },
            child: Row(
              children: [
                Text("See more detail",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,color: kPrimaryColor,size: 15,)
              ],
            ),
          ),
        )
      ],
    );
  }
}