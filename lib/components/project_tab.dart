import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 56,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.divider,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    onChanged: (s) {},
                    decoration: const InputDecoration(
                      hintText: 'Enter text',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: AppColors.textLight),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Optional padding
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary,
                  ),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AssetIcons.search,
                        height: 18,
                        width: 18,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
