import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/ppppp.jpg"
            ),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              width: 46,
              height: 46,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    padding:EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                            color: Colors.white
                        )
                    ),
                    elevation: 0,
                    backgroundColor: Color(0xFFF5F6F9)
                ),
                onPressed: (){},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}