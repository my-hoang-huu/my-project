import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/styles/title_bold.dart';
import 'components/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: pagePadding,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const TitleBold(text: 'Complete Profile'),
            SizedBox(height: getProportionateScreenHeight(10)),
            const Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor),
            ),
            SizedBox(height: getProportionateScreenHeight(60)),
            SignUpForm(),
            SizedBox(height: getProportionateScreenHeight(50)),
            const Text(
              'By continuing your confirm that you agree \nwith our Term and Condition',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    ));
  }
}
