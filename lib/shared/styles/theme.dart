// this for all them we have

import 'package:floward/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

// for light mode
ThemeData appThemeLight() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.deepOrangeAccent),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black54,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.black54),

      // we want to change the appBar status color and his icon
      //backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 16.0,
      ),
      unselectedLabelStyle: TextStyle(fontSize: 14.0),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.buttonColor,
      elevation: 20.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black54),
    ),
  );
}

// for dark mode
ThemeData appThemeDark() {
  return ThemeData(
    scaffoldBackgroundColor: HexColor('333739'),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.deepOrangeAccent),
    appBarTheme: AppBarTheme(
      backgroundColor: HexColor('333739'),
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black54),

      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),

      // we want to change the appBar status color and his icon
      // backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: HexColor('333739'),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 20.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.white),
    ),
  );

  //
}
