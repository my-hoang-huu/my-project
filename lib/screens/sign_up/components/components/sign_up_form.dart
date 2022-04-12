import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/global_widget/default_button.dart';
import 'package:my_app/global_widget/errors_form.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/screens/login_success/login_success_screen.dart';
import 'package:my_app/screens/otp/otp_screen.dart';

import '../../../../global_widget/input_icon.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  String address = '';
  final List<String> errors = [];
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            builFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameFromField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneNumberFromField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildAddressFromField(),
            // SizedBox(height: getProportionateScreenHeight(30)),
            // buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(10)),
            SizedBox(height: getProportionateScreenHeight(10)),
            DefaultButton(
                label: 'Continue',
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (errors.isEmpty) {
                      Navigator.pushNamed(context, OtpScreen.routeName);
                    }
                  }
                }),
          ],
        ));
  }

  TextFormField builFirstNameFormField() {
    return TextFormField(
        onSaved: (newValue) => firstName = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kFirstNamelNullError)) {
            setState(() {
              errors.remove(kFirstNamelNullError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kFirstNamelNullError)) {
            setState(() {
              errors.add(kFirstNamelNullError);
            });
            return '';
          }

          return null;
        },
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
            labelText: 'First name',
            hintText: 'Enter your first name',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InputIcon(iconUrl: 'assets/icons/User.svg')));
  }

  TextFormField buildLastNameFromField() {
    return TextFormField(
        onSaved: (newValue) => lastName = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
            setState(() {
              errors.remove(kLastNamelNullError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kLastNamelNullError)) {
            setState(() {
              errors.add(kLastNamelNullError);
            });
            return '';
          }

          return null;
        },
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
            labelText: 'Last name',
            hintText: 'Enter your last name',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InputIcon(iconUrl: 'assets/icons/User.svg')));
  }

  TextFormField buildPhoneNumberFromField() {
    return TextFormField(
        onSaved: (newValue) => phoneNumber = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
            setState(() {
              errors.remove(kPhoneNumberNullError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
            setState(() {
              errors.add(kPhoneNumberNullError);
            });
            return '';
          }

          return null;
        },
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
            labelText: 'Phone number',
            hintText: 'Enter your phone number',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InputIcon(iconUrl: 'assets/icons/Phone.svg')));
  }

  TextFormField buildAddressFromField() {
    return TextFormField(
        onSaved: (newValue) => address = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kAddressNullError)) {
            setState(() {
              errors.remove(kAddressNullError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kAddressNullError)) {
            setState(() {
              errors.add(kAddressNullError);
            });
            return '';
          }

          return null;
        },
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
            labelText: 'Address',
            hintText: 'Enter your address',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InputIcon(iconUrl: 'assets/icons/Location point.svg')));
  }
}
