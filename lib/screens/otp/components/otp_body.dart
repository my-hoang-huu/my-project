import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/Timer.dart';
import 'package:my_app/global_widget/default_button.dart';
import 'package:my_app/global_widget/styles/title_bold.dart';
import 'package:my_app/screens/sign_in/components/components/sign_in_form.dart';

import '../../../global_widget/no_account_text.dart';
import 'components/otp_input.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

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
            const TitleBold(text: 'OTP Verification'),
            SizedBox(height: getProportionateScreenHeight(10)),
            const Text(
              'We sent your code to +1 898 860 ***',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text('This code will expired in ', textAlign: TextAlign.center),
              Timer(timeBegin: 30.0, timeEnd: 0)
            ]),
            SizedBox(height: getProportionateScreenHeight(110)),
            OtpInput(),
            SizedBox(height: getProportionateScreenHeight(110)),
            SizedBox(
              width: SizeConfig.screenWidth * 0.8,
              child: DefaultButton(label: 'Continue', press: (){})),
            SizedBox(height: getProportionateScreenHeight(70)),
            InkWell(
              onTap: (){},
              child: const Text(
                'Resend OTP Code',
                style: TextStyle(
                    color: kTextColor, decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    ));
  }
}
