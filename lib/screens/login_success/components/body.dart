import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/default_button.dart';
import 'package:my_app/global_widget/styles/title_bold.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset('assets/images/success.png',
              height: SizeConfig.screenHeight * 0.4),
          Spacer(),
          TitleBold(text: 'Login Success'),
          Spacer(flex: 3),
          SizedBox(
              width: SizeConfig.screenWidth * 0.7,
              child: DefaultButton(label: "Back to home", press: () {})),
          Spacer(flex: 2),
        ],
      ),
    ));
  }
}
