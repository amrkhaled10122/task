import 'package:flutter/material.dart';

extension BoxDecorationExtensions on BoxDecoration {
  BoxDecoration roundedBGWithBorderDecoration(
    Color bgColor,
    double radius, {
    BoxBorder? border,
  }) {
    return BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(radius),
      border: border,
    );
  }

  BoxDecoration specialRoundBorderDecoration(
    Color bgColor, {
    double topLeftRadius = 0.0,
    double topRightRadius = 0.0,
    double bottomLeftRadius = 0.0,
    double bottomRightRadius = 0.0,
    BoxBorder? border,
  }) {
    return BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeftRadius),
        topRight: Radius.circular(topRightRadius),
        bottomLeft: Radius.circular(bottomLeftRadius),
        bottomRight: Radius.circular(bottomRightRadius),
      ),
      border: border,
    );
  }

  BoxDecoration imageDecoration(String assetName) {
    return BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          assetName,
        ),
      ),
    );
  }
}
