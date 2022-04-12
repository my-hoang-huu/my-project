import 'package:flutter/material.dart';

class TitleBold extends StatelessWidget {
  final String text;
  const TitleBold({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color.fromARGB(255, 46, 46, 46),
          fontSize: 36,
          fontWeight: FontWeight.bold),
    );
  }
}
