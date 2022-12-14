import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/models/cart.dart';
import 'package:ecommerce_practice_ui/screens/cart/components/cart_item_card.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()
                ),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFE6E6),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg")
                    ],
                  ),
                ),
                onDismissed: (direction){
                  setState(() {

                    demoCarts.removeAt(index);
                  });
                },
                child: CartItemCard(
                  cart: demoCarts[index],
                ),

              ),
            );
          }
      ),
    );
  }
}


