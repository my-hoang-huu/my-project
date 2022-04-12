import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constants.dart';
import 'package:my_app/global_widget/default_button.dart';
import 'package:my_app/global_widget/errors_form.dart';
import 'package:my_app/core/size_config.dart';
import 'package:my_app/global_widget/input_icon.dart';
import 'package:my_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:my_app/screens/login_success/login_success_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool isRemember = false;
  final List<String> errors = [];
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(10)),
            Row(
              children: [
                Checkbox(
                    side: BorderSide(width: 1.2, color: kTextColor),
                    value: isRemember,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        isRemember = value!;
                      });
                    }),
                Text('Remember me'),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName);
                  },
                  child: Text('Forgot password',
                      style: TextStyle(decoration: TextDecoration.underline)),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            DefaultButton(
                label: 'Continue',
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (errors.isEmpty) {
                      Navigator.pushNamed(
                          context, LoginSuccessScreen.routeName);
                    }
                  }
                }),
          ],
        ));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kEmailNullError)) {
            setState(() {
              errors.remove(kEmailNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError) ||
              value.isEmpty) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kEmailNullError);
            });
            return '';
          } else if (value.isNotEmpty &&
              !emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
            return '';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InputIcon(iconUrl: 'assets/icons/Mail.svg')));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: passwordVisibility ? false : true,
        onSaved: (newValue) => password = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError) ||
              value.isEmpty) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return '';
          } else if (value.isNotEmpty &&
              value.length < 8 &&
              !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
            return '';
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: Icon(
                        !passwordVisibility
                            ? CupertinoIcons.eye_slash
                            : CupertinoIcons.eye,
                        color: kTextColor))
                // child: SvgPicture.asset('assets/icons/Lock.svg'),
                )));
  }
}
