import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../text/w_text.dart';
import '../../extensions/color_extension.dart';
import '../../extensions/context_extensions.dart';

// [WTextButton]is Custom button widget with text and optional styling
class WTextButton extends StatelessWidget {
  const WTextButton({
    required this.text,
    this.onPressed,
    this.height,
    this.width,
    this.bgColor,
    this.textStyle,
    super.key,
  });

  final Function()? onPressed;
  final String text;
  final double? height;
  final double? width;
  final Color? bgColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          Size(
            width ?? 60.w,
            height ?? 48.h,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          bgColor ?? context.theme.colorScheme.transparentColor,
        ),
      ),
      child: WText(text, style: textStyle),
    );
  }
}
