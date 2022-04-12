import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: _textTheme(),
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: kTextColor),
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 8,
          borderRadius: BorderRadius.circular(28)),
      border: OutlineInputBorder(
          gapPadding: 8, borderRadius: BorderRadius.circular(28)));
}

TextTheme _textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    // brightness: Brightness.light,
    centerTitle: true,
    titleTextStyle: TextStyle(color: kTextColor, fontSize: 18),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );
}
