import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onTap, this.label});
  final GestureTapCallback? onTap;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.gradient_1,
              AppColors.gradient_2,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        child: Center(
          child: Text(
            label!,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.primary, // Background color
          borderRadius: BorderRadius.circular(50), // Rounded corners
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 12),
            SvgPicture.asset(AssetIcons.filter),
            const SizedBox(width: 8),
            const Text(
              'Filter',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
