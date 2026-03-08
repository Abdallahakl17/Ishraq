import 'package:flutter/services.dart';
import 'package:ishraq/core/my_shared.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColorsLigth.primaryColor,
  scaffoldBackgroundColor: AppColorsLigth.primaryColor,
  fontFamily: 'JannaLT',
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: AppColorsLigth.primaryColor,
    iconTheme: IconThemeData(color: AppColorsLigth.primaryColor, size: 24.sp),
    actionsIconTheme: IconThemeData(
      color: AppColorsLigth.primaryColor,
      size: 24.sp,
    ),
    titleTextStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.primaryColor,
      fontFamily: 'JannaLT',
    ),
    toolbarHeight: 56.h,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  iconTheme: IconThemeData(color: AppColorsLigth.gold, size: 20.sp),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
     fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.gold,
  ),
    headlineSmall: TextStyle(
     fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.gold,
  ),
    labelLarge: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.primaryColor,
    ),
    labelMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.white,
    ),
    labelSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.primaryColor,
    ),
    titleMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.white,
    ),
    titleLarge: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      color: AppColorsLigth.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColorsLigth.gold,
      foregroundColor: AppColorsLigth.primaryColor,
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: AppColorsLigth.white,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      padding: EdgeInsets.all(16.r),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    filled: true,
    fillColor: AppColorsLigth.primaryColor,
    hintStyle: TextStyle(
      color: AppColorsLigth.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColorsLigth.gold, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColorsLigth.gold, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColorsLigth.gold, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: Colors.transparent,
    textColor: AppColorsLigth.white,
    iconColor: AppColorsLigth.white,
    leadingAndTrailingTextStyle: TextStyle(color: AppColorsLigth.white),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    dense: true,
    style: ListTileStyle.drawer,
  ),
);
