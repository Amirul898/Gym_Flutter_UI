import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constants/app_sizes.dart';
import '../Constants/assets.dart';
import 'circular_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,

      ///Appbar Title
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(UAssets.Profile),
            maxRadius: 28,
            minRadius: 24,
          ),
          SizedBox(width: UAppSizes.spaceBtwItems),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back,", style: TextStyle(fontSize: 18)),
              Text(
                "Amirul Islam",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
      actionsPadding: EdgeInsets.only(right: UAppSizes.screenPadding),

      ///Circular Icon
      actions: [
        CircularIcon(icon: FontAwesomeIcons.solidBell),
        SizedBox(width: UAppSizes.spaceBtwItems),
        CircularIcon(icon: FontAwesomeIcons.solidCalendar),
      ],
    );
  }
}