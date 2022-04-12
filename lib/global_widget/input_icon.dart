import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputIcon extends StatelessWidget {
  const InputIcon({
    Key? key,
    required this.iconUrl,
  }) : super(key: key);

  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 16, bottom: 16),
      child: SvgPicture.asset(
        iconUrl,
      ),
    );
  }
}
