import 'package:flutter/material.dart';

class DinamicSizeResponsive {
  final Size mediaQueryData;

  DinamicSizeResponsive({required this.mediaQueryData});

  static DinamicSizeResponsive of(BuildContext context) =>
      DinamicSizeResponsive(mediaQueryData: MediaQuery.sizeOf(context));

  double dynamicScaleSize(
      {required double size}) {
    final shortestSide = mediaQueryData.shortestSide;
    const tabletXl = 1000;
    const tabletLg = 800;
    const tabletSm = 600;
    const phoneLg = 400;

    if (shortestSide > tabletXl) {
      return size * 1.25;
    } else if (shortestSide > tabletLg) {
      return size * 1.15;
    } else if (shortestSide > tabletSm) {
      return size * 1;
    } else if (shortestSide > phoneLg) {
      return size * .9; // phone
    } else {
      return size * .85; // small phone
    }
  }

  /// Defines device type based on logical device pixels. Bigger than 600 means it is a tablet
  bool isTablet() {
    final shortestSide = mediaQueryData.shortestSide;
    return shortestSide > 600;
  }

  /// Defines device type based on logical device pixels. Less or equal than 320 means it is a mini device
  bool isMini() {
    final shortestSide = mediaQueryData.shortestSide;
    return shortestSide <= 320;
  }
}
