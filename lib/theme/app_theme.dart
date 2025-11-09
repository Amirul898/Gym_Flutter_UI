import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/app_colors.dart';


class AppTheme{

  ///light Theme
  static ThemeData lightTheme = ThemeData(
scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: UAppColors.dark),

    textTheme: GoogleFonts.nunitoTextTheme(
      ThemeData.light().textTheme.apply(
        bodyColor: Colors.black,
        displayColor: Colors.black,
      ),
    ),
  );



  ///dark Theme
 static ThemeData darkTheme = ThemeData(
scaffoldBackgroundColor: Colors.black,
   brightness: Brightness.dark,
   iconTheme: IconThemeData(color: UAppColors.light),
   textTheme: GoogleFonts.nunitoTextTheme(
     ThemeData.dark().textTheme.apply(
       bodyColor: Colors.white,
       displayColor: Colors.white,
     ),
   ),
 );
}

