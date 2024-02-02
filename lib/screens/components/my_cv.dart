import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';

class MyCV extends StatelessWidget {
  const MyCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
