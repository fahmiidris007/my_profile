import 'package:flutter/material.dart';
import 'package:profile_portfolio/constants.dart';
import 'package:profile_portfolio/models/project.dart';
import 'package:profile_portfolio/responsive.dart';
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
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: ProjectCard(
          project: demoProjects[index],
        ),
      ),
    );
  }
}
