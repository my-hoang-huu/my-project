import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/no_account_text.dart';
import 'package:my_app/global_widget/styles/title_bold.dart';

import '../../sign_in/components/components/sign_in_form.dart';
import 'forgot_password_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
            const TitleBold(text: 'Forgot Password'),
            SizedBox(height: getProportionateScreenHeight(10)),
            const Text(
              'Please enter your email and we will send you a link to return to your account',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.14),
            ForgotPasswordForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.14),
            NoAccountText(),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    ));
  }
}
