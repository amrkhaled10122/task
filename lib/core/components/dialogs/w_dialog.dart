import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../buttons/w_button.dart';
import '../text/w_text.dart';

// [WDialog] is Custom class for defining properties of a dialog
class WDialog extends StatelessWidget {
  final String? image;
  final Color? imageColor;
  final String? title;
  final String? description;
  final String? mainButtonTitle;
  final Function? mainButtonAction;
  final String? secondaryButtonTitle;
  final Function? secondaryButtonAction;
  final List<Widget>? customDialogBody;
  final List<Widget>? actions;

  const WDialog({
    super.key,
    this.image,
    this.imageColor,
    this.title,
    this.description,
    this.mainButtonTitle,
    this.mainButtonAction,
    this.secondaryButtonTitle,
    this.secondaryButtonAction,
    this.customDialogBody,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 20.w,
      ),
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      // backgroundColor: context.theme.colorScheme.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 25.h,
          horizontal: 20.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: customDialogBody ??
              [
                if (image != null)
                  Container(
                    width: 100.w,
                    height: 100.h,
                    margin: EdgeInsets.symmetric(
                      vertical: 25.h,
                    ),
                    child: SvgPicture.asset(
                      image ?? '',
                      width: 50.w,
                      height: 50.h,
                      color: imageColor,
                    ),
                  ),
                if (title != null)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: WText(
                      title ?? '',
                      // style: context.theme.textTheme.bodyLarge?.copyWith(
                      //   fontSize: 18.sp,
                      //   fontWeight: FontWeight.bold,
                      //   color: context.theme.colorScheme.boldGreyColor,
                      // ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                SizedBox(
                  height: 15.h,
                ),
                if (description != null)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: WText(
                      description ?? '',
                      // style: context.theme.textTheme.bodyLarge?.copyWith(
                      //   fontSize: 16.sp,
                      //   color: context.theme.colorScheme.greyColor,
                      // ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: actions ??
                      [
                        WButton(
                          width: 160.w,
                          title: mainButtonTitle ?? '',
                          onPressed: mainButtonAction ?? () {},
                          // color: context.theme.colorScheme.boldGreyColor,
                        ),
                        const Spacer(),
                        WButton(
                          width: 120.w,
                          title: secondaryButtonTitle ?? '',
                          onPressed: secondaryButtonAction ?? () {},
                          isWhiteButton: true,
                        ),
                      ],
                ),
              ],
        ),
      ),
    );
  }
}
