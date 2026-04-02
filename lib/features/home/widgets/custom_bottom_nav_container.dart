import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishraq/core/theme/app_color/app_colors_ligth.dart';

BottomNavigationBarItem customContainerNavBar({
  required String imgName,
  required String label,
  required int index,
  required int currentIndex,
}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      width: 59.w,
      height: 34.h,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColorsLigth.primaryColor.withAlpha(100)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Center(child: ImageIcon(AssetImage(imgName), size: 27.w)),
    ),
  );
}
