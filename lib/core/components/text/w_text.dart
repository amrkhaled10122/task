import 'package:flutter/material.dart';

// [WText]is Custom widget for displaying text with customizable properties
class WText extends StatelessWidget {
  const WText(
    this.data, {
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.style,
    this.height = 1,
    Key? key,
    this.textDirection,
    this.softWrap,
    this.textScaleFactor,
  }) : super(key: key);
  final String data;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double height;
  final bool? softWrap;
  final double? textScaleFactor;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(data,
        key: key,
        overflow: overflow,
        style: style,
        maxLines: maxLines,
        textAlign: textAlign,
        softWrap: softWrap,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
        textDirection: textDirection);
  }
}
