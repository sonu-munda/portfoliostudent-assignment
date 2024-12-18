import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/components/project_card_item.dart';
import 'package:portfoliostudent/components/serach_bar.dart';
import 'package:portfoliostudent/data/project_data.dart';
import 'package:portfoliostudent/shared_widgets/widgets.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  TextEditingController controller = TextEditingController();

  List showData = projectData;

  void onSearch(String s) {
    showData = projectData.where((p) => p['title']!.toLowerCase().contains(s.toLowerCase())).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  AppSearchBar(
                    controller: controller,
                    onChanged: onSearch,
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    itemCount: showData.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, i) => ProjectCardItem(
                      item: showData[i],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          child: FilterButton(
            onTap: () {},
          ),
        )
      ],
    );
  }
}
