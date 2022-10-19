import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> categories=[

      {
        "icon":"assets/icons/Flash Icon.svg",
        "text":"Flash Deal"
      },
      {
        "icon":"assets/icons/Bill Icon.svg",
        "text":"Bill"
      },
      {
        "icon":"assets/icons/Game Icon.svg",
        "text":"Game"
      },
      {
        "icon":"assets/icons/Gift Icon.svg",
        "text":"Daily gift"
      },
      {
        "icon":"assets/icons/Discover.svg",
        "text":"More"
      },


    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length, (index) => CategoriesCard(
              icon: categories[index]['icon'],
              text: categories[index]['text'],
              onPressed: (){


              }
          ))
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,

  }) : super(key: key);

  final String icon,text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(height: 5,),
            Text(text,textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}