
import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightColor=Color(0xff39A552);
  static Color whiteColor=Color(0xffFFFFFF);
  static Color redColor=Color(0xffC91C22);
  static Color darkBlueColor=Color(0xff003E90);
  static Color binkColor=Color(0xffED1E79);
  static Color brownColor=Color(0xffCF7E48);
  static Color blackColor=Color(0xff303030);
  static Color greyColor=Color(0xff4F5A69);
  static Color yellowColor=Color(0xffF2D352);
  static Color blueColor=Color(0xff4882CF);

  static ThemeData lightTheme=ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
    backgroundColor: primaryLightColor,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
  ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whiteColor
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color:blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight:  FontWeight.bold,
        color: blackColor,
      ),
    ),

  );
}