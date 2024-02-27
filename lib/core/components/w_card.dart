import 'package:flutter/material.dart';

// [WCard]is Custom widget for a stylized card with configurable properties
class WCard extends StatelessWidget {
  const WCard({
    super.key,
    required this.child,
    this.color,
    this.shadowColor,
    this.roundedCorder,
    this.elevation,
    this.margin,
    this.borderRadius,
    this.padding,
  });
  final Widget child;
  final Color? color;
  final Color? shadowColor;
  final ShapeBorder? roundedCorder;
  final double? elevation;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(2),
      child: Card(
        elevation: elevation ?? 4,
        shape: roundedCorder,
        color: color,
        margin: EdgeInsets.zero,
        shadowColor: shadowColor,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}
