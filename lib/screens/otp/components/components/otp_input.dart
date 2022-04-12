import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

import 'otp_input_item.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({Key? key}) : super(key: key);

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value != null && value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 53,
              child: TextFormField(
                obscureText: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
              )),
          SizedBox(
              width: 53,
              child: TextFormField(
                focusNode: pin2FocusNode,
                obscureText: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              )),
          SizedBox(
              width: 53,
              child: TextFormField(
                focusNode: pin3FocusNode,
                obscureText: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
              )),
          SizedBox(
              width: 53,
              child: TextFormField(
                focusNode: pin4FocusNode,
                obscureText: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: inputDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
              )),
        ],
      ),
    );
  }
}
