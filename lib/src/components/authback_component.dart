import 'package:cells/src/utils/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthBackground extends StatelessWidget {
  final double parentHeight;
  const AuthBackground({
    super.key,
    required this.parentHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: logicalWidth,
          height: parentHeight,
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/images/logo_background.png",
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/logo.svg",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              Text(
                "Cells",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
