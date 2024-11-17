import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfoliostudent/shared_widgets/widgets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class ProjectCardItem extends StatelessWidget {
  const ProjectCardItem({super.key, this.item});
  final Map? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.divider,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                item!['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item!['title'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item!['subtitle'],
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.text,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textLight,
                                    ),
                                    text: "${item!['name_1']} ",
                                    children: [
                                  TextSpan(
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                      text: item!['name_2'])
                                ]))
                          ],
                        ),
                      ),
                      AppButton(
                        label: "A",
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
