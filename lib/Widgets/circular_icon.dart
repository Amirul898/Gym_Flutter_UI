import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_app_ui/helper.dart';

import '../Constants/app_colors.dart';
import '../Constants/app_sizes.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,

  });

final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDark(context);

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 2,
          color: isDark ? UAppColors.light : UAppColors.dark,
        ),
      ),
      child: FaIcon(
        icon,
        size: UAppSizes.iconSize,
      ),
    );
  }
}