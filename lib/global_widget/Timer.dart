import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
    required this.timeBegin,
    required this.timeEnd,
  }) : super(key: key);

  final double timeBegin;
  final int timeEnd;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: timeBegin, end: timeEnd),
        duration: Duration(seconds: timeBegin.toInt()),
        builder: (context, dynamic value, child) => Text('00:${value.toInt()}',
            textAlign: TextAlign.center,
            style: TextStyle(color: kPrimaryColor)));
  }
}
