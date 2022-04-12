import 'package:flutter/material.dart';
import 'package:my_app/global_widget/default_button.dart';
import 'package:my_app/screens/sign_in/sign_in_screen.dart';
import 'package:my_app/screens/splash/components/splash_contents.dart';
import 'package:my_app/core/size_config.dart';

import '../../../core/constants.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, List<String>>> splashData = [
    {
      'text': ['Welcom to ', 'HHMY', ', Let\'s shop!'],
      "image": ["assets/images/splash_1.png"]
    },
    {
      "text": [
        "We help people conect with store \naround United State of America"
      ],
      "image": ["assets/images/splash_2.png"]
    },
    {
      "text": ["We show the easy way to shop. \nJust stay at home with us"],
      "image": ["assets/images/splash_3.png"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: pagePadding,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        listText: splashData[index]['text']!,
                        imgUrl: splashData[index]['image']!,
                      )),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index))),
                    Spacer(flex: 3),
                    DefaultButton(
                      label: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 4),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
