import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/enums/enums.dart';

import '../../extensions/context_extensions.dart';
import '../w_loader.dart';
import '../text/w_text.dart';

// [WButton] Custom button widget with various customization options
class WButton extends StatefulWidget {
  const WButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.height,
    this.width,
    this.isWhiteButton,
    this.icon,
    this.color,
    this.disabled,
    this.radius,
    this.customTextColor,
    this.customBorderColor,
    this.fontSize,
  }) : super(key: key);

  final String title;
  final double? fontSize;
  final Function onPressed;
  final double? height;
  final double? radius;
  final double? width;
  final bool? isWhiteButton;
  final bool? disabled;
  final Widget? icon;
  final Color? color;
  final Color? customTextColor;
  final Color? customBorderColor;

  @override
  State<WButton> createState() => _WButtonState();
}

class _WButtonState extends State<WButton> {
  ButtonState buttonState = ButtonState.Idle;

  void changeButtonState(ButtonState state) {
    if (mounted) {
      setState(() {
        buttonState = state;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return (buttonState == ButtonState.Loading)
        ? Center(
            child: SizedBox(
              height: widget.height ?? 52.h,
              width: widget.width ?? ScreenUtil.defaultSize.height,
              child: const WLoader(),
            ),
          )
        : ElevatedButton(
            onPressed: (widget.disabled == true)
                ? null
                : () async {
                    final FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.focusedChild?.unfocus();
                    }
                    changeButtonState(ButtonState.Loading);
                    try {
                      await widget.onPressed.call();
                      changeButtonState(ButtonState.Idle);
                    } catch (e) {
                      // Even if this fails, the button must return to its state.
                      changeButtonState(ButtonState.Idle);
                    }
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            child: Container(
              height: widget.height ?? 52.h,
              width: widget.width ?? ScreenUtil.defaultSize.width - 30,
              alignment: Alignment.center,
              decoration: getDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (widget.icon != null) widget.icon ?? Container(),
                  if (widget.icon != null)
                    SizedBox(
                      width: 9.w,
                    ),
                  if (widget.icon != null)
                    WText(
                      widget.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: getTextStyle(),
                    )
                  else
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: WText(
                          widget.title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: getTextStyle(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
  }

  TextStyle? getTextStyle() {
    return widget.isWhiteButton == null
        ? context.theme.textTheme.headlineSmall?.copyWith(
            // color: widget.customTextColor ?? context.theme.colorScheme.whiteColor,
            fontSize: widget.fontSize ?? 18.sp,
            fontWeight: FontWeight.bold,
            height: 1,
          )
        : context.theme.textTheme.bodyMedium?.copyWith(
            // color: widget.customTextColor ?? context.theme.colorScheme.blackColor,
            fontSize: widget.fontSize ?? 18.sp,
            height: 1,
          );
  }

  BoxDecoration getDecoration() {
    final Color color = (widget.disabled ?? false) ? Colors.black12 : Colors.black12;

    return widget.isWhiteButton == null
        ? BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
          )
        : BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                  // color: widget.customBorderColor ?? context.theme.colorScheme.blackColor,
                  ),
            ),
            borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
          );
  }
}
