import 'package:flutter/material.dart';
import 'package:gym_app_ui/Constants/app_colors.dart';
import 'package:gym_app_ui/Constants/app_shadow.dart';
import 'package:gym_app_ui/helper.dart';

import '../Constants/app_sizes.dart';

class EmojiList extends StatelessWidget {
  const EmojiList({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunction.isDark(context);

    return SizedBox(
      height: 81,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            SizedBox(width: UAppSizes.spaceBtwItems / 2),
        itemCount: 5,
        itemBuilder: (context, index) {
          List<String> emojis = ['😁', '🙂', '😐', '😔', '😟'];

          return buildEmojiCard(isDark, emojis, index);
        },
      ),
    );
  }

  Padding buildEmojiCard(bool isDark, List<String> emojis, int index) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Container(
            height: UAppSizes.emojiCardSize,
            width: UAppSizes.emojiCardSize,
            decoration: BoxDecoration(
              color: isDark ? UAppColors.darkGrey : UAppColors.light,
              borderRadius: BorderRadius.circular(UAppSizes.borderRadiusMd),
              boxShadow: UAppShadow.emojiCardShadow,
            ),

            child: Center(
              child: Text(emojis[index], style: TextStyle(fontSize: 40)),
            ),
          ),
        );
  }
}
