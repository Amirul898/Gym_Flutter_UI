import 'package:flutter/material.dart';
import 'package:gym_app_ui/Widgets/score_board_left_portion.dart';
import 'package:gym_app_ui/Widgets/top_sb-right_portion.dart';

import '../Constants/app_colors.dart';
import '../Constants/app_shadow.dart';
import '../Constants/app_sizes.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UAppSizes.scoreCardSize,
      decoration: BoxDecoration(
        color: UAppColors.primaryColor,
        borderRadius: BorderRadius.circular(UAppSizes.borderRadiusLg),
        boxShadow: UAppShadow.scoreCardShadow,
      ),
      padding: EdgeInsets.all(UAppSizes.lg),
      child: Row(
        children: [
          /// left portion
          Expanded(
              flex: 2,
              child: ScoreBoardLeftPortion()),

          /// right portion
          Expanded(
              flex: 1,
              child: ScoreBoardRightPortion()),
        ],
      ),
    );
  }
}
