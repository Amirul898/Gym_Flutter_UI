import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_app_ui/Constants/app_colors.dart';
import 'package:gym_app_ui/Constants/app_shadow.dart';
import 'package:gym_app_ui/Constants/app_sizes.dart';
import 'package:gym_app_ui/helper.dart';
import 'Data/dummy_data.dart';
import 'Widgets/circular_icon.dart';
import 'Widgets/emoji_list.dart';
import 'Widgets/home_appbar.dart';
import 'Widgets/score_card.dart';
import 'Widgets/task_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDark(context);

    return Scaffold(
      backgroundColor: isDark ? UAppColors.dark : UAppColors.light,
      body: SafeArea(
        child: Stack(
          children: [
            /// Scrollable Content
            SingleChildScrollView(
              padding: const EdgeInsets.all(UAppSizes.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// App Bar
                  const HomeAppBar(),
                  const SizedBox(height: UAppSizes.spaceBtwSections),

                  /// Score Card
                  const ScoreCard(),
                  const SizedBox(height: UAppSizes.spaceBtwSections),

                  /// Mood Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Choose your mood for today",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: UAppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: UAppSizes.spaceBtwSections),

                  /// Emoji List
                  const EmojiList(),
                  const SizedBox(height: UAppSizes.spaceBtwSections),

                  /// Grid Section with dummy data
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dummyDataList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: UAppSizes.spaceBtwItems,
                      mainAxisSpacing: UAppSizes.spaceBtwItems,
                      mainAxisExtent:
                          HelperFunction.screenHeight(context) * 0.19,
                    ),
                    itemBuilder: (context, index) {
                      return TaskCard(index: index);
                    },
                  ),
                ],
              ),
            ),

            /// Bottom Navigation Bar (Floating, Blurred)
            Positioned(
              bottom: Platform.isIOS ? 0 : UAppSizes.spaceBtwItems,
              left: UAppSizes.screenPadding,
              right: UAppSizes.screenPadding,
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: Colors.black.withValues(alpha: isDark ? 0.5 : 0.7),
                      child: BottomNavigationBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: UAppColors.primaryColor,
                        unselectedItemColor: isDark
                            ? Colors.white70
                            : Colors.black54,
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home_filled),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.bar_chart),
                            label: 'Analytics',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person),
                            label: 'Profile',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
