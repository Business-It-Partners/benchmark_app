import 'package:benchmark/app/config/color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Duration duration = const Duration(milliseconds: 360);

class AppStyles {
  static TextStyle get appbar {
    return TextStyle(
      fontSize: 19.sp,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      // fontFamily: 'Lato', // Optional: specify if you have the font asset
    );
  }

  static TextStyle get titleStyle {
    return TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 169, 96, 96),
      // fontFamily: 'Lato',
    );
  }

  static TextStyle get subtitleStyle {
    return TextStyle(
      fontSize: 16.sp,
      color: AppColors.iconColors,
      fontWeight: FontWeight.w400,
      // fontFamily: 'Poppins',
    );
  }

  static TextStyle get mainHeading {
    return TextStyle(
      overflow: TextOverflow.fade,
      fontSize: 22.sp,
      color: AppColors.iconColors,
      fontWeight: FontWeight.w700,
      // fontFamily: 'Poppins',
    );
  }

  static TextStyle get buttonText {
    return TextStyle(
      fontSize: 17.5.sp,
      color: const Color.fromARGB(221, 255, 255, 255),
      fontWeight: FontWeight.w600,
      // fontFamily: 'Poppins',
    );
  }

  static TextStyle get listTileTitle {
    return TextStyle(
      fontSize: 16.5.sp,
      color: AppColors.iconColors,
      fontWeight: FontWeight.w600,
      // fontFamily: 'Lato',
    );
  }

  static TextStyle get listTileTitle1 {
    return TextStyle(
      fontSize: 17.5.sp,
      color: const Color.fromARGB(221, 255, 255, 255),
      fontWeight: FontWeight.w600,
      // fontFamily: 'Lato',
    );
  }

  static TextStyle get listTilesubTitle1 {
    return TextStyle(
      fontSize: 15.sp,
      color: const Color.fromARGB(255, 2, 49, 4),
      fontWeight: FontWeight.w500,
      // fontFamily: 'Poppins',
    );
  }

  static TextStyle get listTilesubTitle {
    return TextStyle(
      fontSize: 15.sp,
      color: const Color.fromARGB(255, 107, 109, 110),
      fontWeight: FontWeight.w500,
      // fontFamily: 'Poppins',
    );
  }

  static TextStyle get topicsHeading {
    return TextStyle(
      fontSize: 18.sp,
      color: AppColors.iconColors,
      fontWeight: FontWeight.w800,
      // fontFamily: 'Lato',
    );
  }

  static TextStyle get topicsHeading1 {
    return TextStyle(
      fontSize: 18.sp,
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w800,
      // fontFamily: 'Lato',
    );
  }
}

class AppPadding {
  static EdgeInsetsGeometry get screenHorizontalPadding {
    return EdgeInsets.symmetric(horizontal: 3.5.w);
  }
}
