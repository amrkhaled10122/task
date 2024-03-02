import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../extensions/color_extension.dart';
import '../../../extensions/context_extensions.dart';
import '../../text/w_text.dart';

class WSharedAppBar extends StatelessWidget {
  const WSharedAppBar({
    required this.title,
    Key? key,
    this.isCenterTitle,
    this.onBackCallback,
    this.removeBack = false,
    this.actions,
    this.backgroundColor,
    this.leading,
  }) : super(key: key);
  final String title;
  final bool? isCenterTitle;
  final bool removeBack;
  final List<Widget>? actions;
  final Function? onBackCallback;
  final Widget? leading;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: actions,
      leading: leading ??
          (removeBack
              ? const SizedBox()
              : InkWell(
                  onTap: () => onBackCallback?.call() ?? Navigator.of(context).pop(),
                  child: Container(
                    height: 24.h,
                    width: 24.w,
                    padding: EdgeInsets.all(20.w),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: context.theme.colorScheme.blackColor,
                      size: 18.sp,
                    ),
                  ),
                )),
      centerTitle: isCenterTitle ?? true,
      surfaceTintColor: Colors.transparent,
      title: WText(
        title,
        style: context.theme.textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
          color: context.theme.colorScheme.whiteColor,
          height: 2.0,
        ),
      ),
    );
  }
}
