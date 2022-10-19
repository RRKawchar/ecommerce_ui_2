import 'package:ecommerce_practice_ui/component/default_button.dart';
import 'package:ecommerce_practice_ui/constants.dart';
import 'package:ecommerce_practice_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_practice_ui/screens/splash/component/splash_content.dart';
import 'package:ecommerce_practice_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int currentIndex=0;
  List<Map<String, dynamic>> splashData = [
    {
      "text": "Welcome To Tokoto, lets Shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "WWe help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {

                      currentIndex=value;
                    });
                  },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) {
                      return SplashContent(
                        text: splashData[index]['text'],
                        image: splashData[index]['image'],
                      );
                    })),
             Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:List.generate(splashData.length, (index) => builDot(index: index))

                    ),
                    const Spacer(flex: 3,),
                    DefaultButton(
                        text: "Continue",
                        pressed: (){
                         Navigator.pushNamed(context, SignInScreen.routeName);
                        }
                    ),
                    const Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer builDot({int? index}){

    return AnimatedContainer(
      duration: kAnimationDuration,
      margin:const EdgeInsets.only(right: 5),
      width:currentIndex==index?20:6,
      height:6,
      decoration: BoxDecoration(
          color:currentIndex==index?kPrimaryColor:const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}
