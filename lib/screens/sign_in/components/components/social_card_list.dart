import 'package:flutter/material.dart';
import 'package:my_app/global_widget/social_card.dart';

class SocialCardList extends StatelessWidget {
  const SocialCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          urlIcon: 'assets/icons/google-icon.svg',
        ),
        SocialCard(
          urlIcon: 'assets/icons/facebook-2.svg',
        ),
        SocialCard(
          urlIcon: 'assets/icons/twitter.svg',
        ),
      ],
    );
  }
}
