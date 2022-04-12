import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

import '../../../core/size_config.dart';

class SplashContent extends StatelessWidget {
  final List<String> listText;
  final List<String> imgUrl;
  const SplashContent({
    Key? key,
    required this.listText,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Spacer(),
      const Text('HHMY',
          style: TextStyle(
            // fontSize: getProportionateScreenWidth(36),
            fontSize: 28,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          )),
      listText.length == 1
          ? Text(listText[0], textAlign: TextAlign.center)
          : Text.rich(
              TextSpan(children: [
                TextSpan(text: listText[0]),
                TextSpan(
                    text: listText[1],
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: listText[2]),
              ]),
              textAlign: TextAlign.center,
            ),
      Spacer(flex: 2),
      Image.asset(
        imgUrl[0],
        width: getProportionateScreenWidth(235),
        height: getProportionateScreenHeight(265),
      ),
    ]);
  }
}
