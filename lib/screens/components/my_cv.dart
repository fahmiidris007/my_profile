import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyCV extends StatelessWidget {
  const MyCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrlString(
            'https://drive.google.com/file/d/1ylJan0Pb1Vyo97-qltqD0AB9sAPWCQvP/view?usp=sharing');
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "Download CV",
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color),
            ),
            const SizedBox(width: defaultPadding / 2),
            const Icon(Icons.download),
          ],
        ),
      ),
    );
  }
}
