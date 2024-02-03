import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';

class MyAreaInfo extends StatelessWidget {
  const MyAreaInfo({
    super.key,
    this.title,
    this.text,
  });
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title!, style: const TextStyle(color: Colors.white)),
          Text(text!),
        ],
      ),
    );
  }
}
