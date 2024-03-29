import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:profile_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover My Amazing \nProjects!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const MyBuildAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      launchUrlString('https://github.com/fahmiidris007');
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: const Text(
                      "Explore in My Github",
                      style: TextStyle(color: darkColor),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const CustumCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text(" I build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const CustumCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Mobile Apps with Kotlin"),
        TyperAnimatedText("Mobile Apps with Flutter"),
        TyperAnimatedText("Backend Services with NodeJS"),
        TyperAnimatedText("Backend Services with GoLang"),
        TyperAnimatedText("Mediatation Apps to Help You Relax"),
        TyperAnimatedText("E-commerce Backend Services"),
        TyperAnimatedText("Restaurants App with Various Features"),
        TyperAnimatedText("Mobile Apps with Clean Architecture"),
        TyperAnimatedText("Mobile Apps with CI/CD Implementation"),
        TyperAnimatedText("Backend Services with TDD implementation"),
        TyperAnimatedText("Backend Services with CI/CD Implementation"),
      ],
    );
  }
}

class CustumCodedText extends StatelessWidget {
  const CustumCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: "<", children: [
        TextSpan(
          text: "project",
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(
          text: ">",
        ),
      ]),
    );
  }
}
