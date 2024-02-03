import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:profile_portfolio/models/project.dart';
import 'package:profile_portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const Spacer(),
        Text(
          project.description!,
          maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(height: 1.5),
        ),
        const Spacer(),
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Explore more",
              style: TextStyle(color: primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
