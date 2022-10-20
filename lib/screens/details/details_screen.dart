import 'package:ecommerce_practice_ui/component/rounded_icon_btn.dart';
import 'package:ecommerce_practice_ui/models/product.dart';
import 'package:ecommerce_practice_ui/screens/details/component/custom_appbar.dart';
import 'package:ecommerce_practice_ui/screens/details/component/details_body.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details_screen";
   DetailsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: CustomAppBar(rating:agrs.product.rating,
        ),

      ),
      body: DetailsBody(product: agrs.product,),
    );
  }
}



class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
