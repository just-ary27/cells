import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CellProgressIndicator extends StatefulWidget {
  final Color color;
  final double dimension;
  const CellProgressIndicator({
    super.key,
    required this.color,
    required this.dimension,
  });

  @override
  State<CellProgressIndicator> createState() => _CellProgressIndicatorState();
}

class _CellProgressIndicatorState extends State<CellProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: SizedBox(
        width: widget.dimension,
        height: widget.dimension,
        child: SvgPicture.asset(
          "assets/images/logo.svg",
          color: widget.color,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
