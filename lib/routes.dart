import 'package:flutter/material.dart';
import 'package:my_app/screens/login_success/login_success_screen.dart';
import 'package:my_app/screens/sign_in/sign_in_screen.dart';
import 'package:my_app/screens/splash/splash_screen.dart';

import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
