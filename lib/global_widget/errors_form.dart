import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => errorLine(error: errors[index])));
  }

  Row errorLine({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(width: getProportionateScreenHeight(10)),
        Text(error),
      ],
    );
  }
}
