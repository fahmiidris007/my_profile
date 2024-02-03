import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyContact extends StatelessWidget {
  const MyContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              launchUrlString(
                  'https://www.linkedin.com/in/fahmi-idris-87ba22259/');
            },
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () {
              launchUrlString('https://github.com/fahmiidris007');
            },
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
