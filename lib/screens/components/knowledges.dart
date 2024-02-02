import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_portfolio/constants.dart';

class MyKnowledges extends StatelessWidget {
  const MyKnowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Knowledge(text: "Clean Architecture"),
        const Knowledge(text: "CI/CD Operations"),
        const Knowledge(text: "Git/Github"),
        const Knowledge(text: "UI/UX Design"),
        const Knowledge(text: "Test Driven Development (TDD)"),
        const Knowledge(text: "SOLID Principles"),
      ],
    );
  }
}

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
          ),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
