
import 'package:flutter/material.dart';

class ScoreBoardLeftPortion extends StatelessWidget {
  const ScoreBoardLeftPortion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Daily Score",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "4/7 tasks completed",
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}