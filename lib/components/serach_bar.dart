import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 50,
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
              onChanged: onChanged,
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
                onPressed: () => onChanged!(controller.text),
                icon: SvgPicture.asset(
                  AssetIcons.search,
                  height: 18,
                  width: 18,
                )),
          )
        ],
      ),
    );
  }
}
