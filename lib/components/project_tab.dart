import 'package:flutter/material.dart';
import 'package:portfoliostudent/components/project_card_item.dart';
import 'package:portfoliostudent/components/serach_bar.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppSearchBar(
              controller: controller,
              onChanged: (s) {},
            ),
            const SizedBox(height: 16),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) => const ProjectCardItem(),
            )
          ],
        ),
      ),
    );
  }
}
