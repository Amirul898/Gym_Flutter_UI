import 'package:flutter/material.dart';

class UAppShadow{
   static  List<BoxShadow>  scoreCardShadow = [
     BoxShadow(
       color: Colors.black.withValues(alpha: 0.2),
       spreadRadius: 1,
       blurRadius: 2,
       offset: Offset(2, 1),
     ),
   ];

   static  List<BoxShadow>  emojiCardShadow = [
     BoxShadow(
       color: Colors.black.withValues(alpha: 0.1),
       spreadRadius: 1,
       blurRadius: 2,
       offset: Offset(2, 1),
     ),
   ];

}