import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.image[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.image.length,
                    (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {

          selectedImage=index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:selectedImage==index?kPrimaryColor:Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.image[index]),
      ),
    );
  }
}
