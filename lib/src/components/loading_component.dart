import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWidget extends StatefulWidget {
  final Color color;
  final double dimension;
  const MyWidget({
    super.key,
    required this.color,
    required this.dimension,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late Timer _timer;
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi * sin(DateTime.now().second / 15),
      child: SizedBox(
        child: SvgPicture.asset(
          "",
          width: widget.dimension,
          height: widget.dimension,
          color: widget.color,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
