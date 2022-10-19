import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatefulWidget {
  final double dimension;
  final Color color;
  const Logo({
    super.key,
    required this.dimension,
    required this.color,
  });

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.dimension,
      height: widget.dimension,
      child: SvgPicture.asset(
        "assets/logo.svg",
        width: widget.dimension,
        height: widget.dimension,
        color: widget.color,
      ),
    );
  }
}
