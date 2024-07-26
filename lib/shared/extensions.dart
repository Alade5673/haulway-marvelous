import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';

extension AppContext on BuildContext {
  Size get size => MediaQuery.of(this).size;
  TextTheme get textTheme => Theme.of(this).textTheme;
  double get deviceHeight => size.height;
  double get deviceWidth => size.width;
  TextStyle? get textTitleTheme => textTheme.titleLarge?.copyWith(
        color: AppColors.kPrimary,
        fontSize: 32.sp,
        fontWeight: FontWeight.w500,
      );
  TextStyle? get textBodyTheme => textTheme.bodySmall?.copyWith(
        color: AppColors.kPrimary,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );
}

extension PaddingExtension on Widget {
  Padding pad([double value = 8.0]) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Padding padSymmetric({double horizontal = 8.0, double vertical = 8.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  Padding padOnly({
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    double left = 0.0,
  }) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
      child: this,
    );
  }
}
