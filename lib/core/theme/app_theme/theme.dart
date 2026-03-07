 
import 'package:flutter/material.dart';
import 'package:ishraq/core/theme/app_theme/app_dark_theme.dart';
import 'package:ishraq/core/theme/app_theme/app_ligth_theme.dart';
  abstract class AppTheme {
  static ThemeData get light => lightTheme;
  static ThemeData get dark => darkTheme;
}