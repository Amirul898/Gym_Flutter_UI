import 'package:flutter/material.dart';
import 'package:gym_app_ui/Constants/app_colors.dart';
import 'package:gym_app_ui/Constants/app_sizes.dart';

class ScoreBoardRightPortion extends StatelessWidget {
  const ScoreBoardRightPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: SizedBox(
        width: UAppSizes.homeCircularIndicator,
        height: UAppSizes.homeCircularIndicator,
        child: Stack(
          children: [
            //indicator
            SizedBox(
              width: UAppSizes.homeCircularIndicator,
              height: UAppSizes.homeCircularIndicator,
              child: CircularProgressIndicator(
                value: 0.9,
                color: UAppColors.dark,
                backgroundColor: Colors.black12,
                strokeWidth: 14,
                strokeCap: StrokeCap.round,
              ),
            ),

            //percentage value
            Center(
              child: Text(
                "90%",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
