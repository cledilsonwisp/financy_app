import 'package:financy_app/core/utils/dinamic_size_responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle bigText(BuildContext context) => GoogleFonts.inter(
      fontSize: DinamicSizeResponsive.of(context).dynamicScaleSize(size: 50),
      fontWeight: FontWeight.w700);
  static TextStyle mediumText(BuildContext context) => GoogleFonts.inter(
      fontSize: DinamicSizeResponsive.of(context).dynamicScaleSize(size: 36),
      fontWeight: FontWeight.w700);
  static TextStyle smallText(BuildContext context) => GoogleFonts.inter(
      fontSize: DinamicSizeResponsive.of(context).dynamicScaleSize(size: 15),
      fontWeight: FontWeight.w300);
  static TextStyle inputText(BuildContext context) => GoogleFonts.inter(
      fontSize: DinamicSizeResponsive.of(context).dynamicScaleSize(size: 14),
      fontWeight: FontWeight.w500);
  static TextStyle inputHintText(BuildContext context) => GoogleFonts.inter(
      fontSize: DinamicSizeResponsive.of(context).dynamicScaleSize(size: 12),
      fontWeight: FontWeight.w400);

  static TextStyle customStyle(
          BuildContext context, FontWeight fontWeight, double size,
          {Color? color}) =>
      GoogleFonts.inter(
          color: color,
          fontSize:
              DinamicSizeResponsive.of(context).dynamicScaleSize(size: size),
          fontWeight: fontWeight);
}
