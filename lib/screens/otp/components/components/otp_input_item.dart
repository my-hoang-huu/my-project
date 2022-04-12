import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/core/size_config.dart';

class OtpInputItem extends StatelessWidget {
  const OtpInputItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var outlineInputBorder = OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(15),
    //     borderSide: BorderSide(color: kTextColor));
    // var inputDecoration = InputDecoration(
    //   contentPadding: EdgeInsets.symmetric(vertical: 8),
    //   border: outlineInputBorder,
    //   focusedBorder: outlineInputBorder,
    //   enabledBorder: outlineInputBorder,
    // );
    return SizedBox(
        width: 53,
        child: TextFormField(
          obscureText: true,
          autofocus: true,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
          decoration: inputDecoration,
          onChanged: (value) {},
        ));
  }
}
