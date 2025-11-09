import 'package:flutter/material.dart';
import 'package:gym_app_ui/Constants/app_colors.dart';
import 'package:gym_app_ui/Constants/app_shadow.dart';
import 'package:gym_app_ui/Constants/app_sizes.dart';
import 'package:gym_app_ui/helper.dart';

import '../Data/dummy_data.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.index });

  final int index;

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunction.isDark(context);
    final item = dummyDataList[index];

    return Stack(
      children: [
        Container(
          height: HelperFunction.screenHeight(context) * 0.19,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isDark ? UAppColors.darkGrey : UAppColors.light,
            borderRadius: BorderRadius.circular(UAppSizes.borderRadiusLg),
            boxShadow: UAppShadow.scoreCardShadow,
          ),
          padding: EdgeInsets.all(UAppSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

            children: [
              Text(
                item.title1,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Text(
                item.title2,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: UAppSizes.sm),
              Text(
                item.name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: UAppSizes.xs),
              Flexible(
                child: Text(
                 item.description,
                  style: TextStyle(
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 3.0,
          right: 3.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(1000)
            ),

            child: SizedBox(
              width: 55,
              height: 55,
              child: Stack(
                children: [
                  SizedBox(
                      width: 55,
                      height: 55,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.black,
                        strokeWidth: 6.0,
                        strokeCap: StrokeCap.round,
                        color: Colors.purple,
              
                        value: 0.2,
                      )),
                  Center(child: Icon(item.icon, color: isDark ? UAppColors.light : UAppColors.dark,),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
