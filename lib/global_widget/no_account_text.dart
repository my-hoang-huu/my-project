import 'package:flutter/material.dart';
import 'package:my_app/screens/sign_up/sign_up_screen.dart';

import '../core/constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account?'),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Text(' Sign Up', style: TextStyle(color: kPrimaryColor))),
      ],
    );
  }
}
