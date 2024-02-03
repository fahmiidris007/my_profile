import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:profile_portfolio/models/project.dart';
import 'package:profile_portfolio/screens/home/components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.all(defaultPadding),
            color: secondaryColor,
            child: ProjectCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }
}
