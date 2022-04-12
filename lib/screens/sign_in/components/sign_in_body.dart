import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/styles/title_bold.dart';

import '../../../global_widget/no_account_text.dart';
import 'components/sign_in_form.dart';
import 'components/social_card_list.dart';

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
            TitleBold(text: 'Welcom Back'),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              'Sign in with your email and password \nor continue with social media',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor),
            ),
            SizedBox(height: getProportionateScreenHeight(60)),
            SignInForm(),
            SizedBox(height: getProportionateScreenHeight(60)),
            SocialCardList(),
            SizedBox(height: getProportionateScreenHeight(20)),
            NoAccountText(),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    ));
  }
}
