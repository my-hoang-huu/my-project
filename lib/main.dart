import 'package:flutter/material.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/core/theme.dart';
import 'package:my_app/screens/otp/otp_screen.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const SplashScreen(),

      // initialRoute: SplashScreen.routeName,
      initialRoute: OtpScreen.routeName,
      routes: routes,
    );
  }
}
