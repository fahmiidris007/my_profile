import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_portfolio/constants.dart';

import 'knowledges.dart';
import 'my_area_info.dart';
import 'my_contact.dart';
import 'my_cv.dart';
import 'my_info.dart';
import 'my_skills.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: Column(
              children: [
                const MyAreaInfo(
                  title: "Residence",
                  text: "Indonesia",
                ),
                const MyAreaInfo(
                  title: "City",
                  text: "Tangerang",
                ),
                const MyAreaInfo(
                  title: "Age",
                  text: "23",
                ),
                Column(
                  children: [
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding / 2),
                      child: Text(
                        "Skills",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                const MySkills(),
                const SizedBox(height: defaultPadding / 2),
                const MyKnowledges(),
                const Divider(),
                const SizedBox(height: defaultPadding / 2),
                const MyCV(),
                const MyContact()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
