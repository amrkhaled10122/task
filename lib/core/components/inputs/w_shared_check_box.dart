import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extensions/color_extension.dart';
import '../../extensions/context_extensions.dart';

// ignore: must_be_immutable
class WSharedCheckBox extends StatelessWidget {
  WSharedCheckBox({
    required this.onChanged,
    required this.value,
    super.key,
  });

  void Function()? onChanged;
  bool? value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(),
      splashColor: Colors.transparent,
      child: Container(
        width: 18.w,
        height: 18.h,
        margin: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: context.theme.colorScheme.grey90Color,
          ),
        ),
        child: (value ?? false)
            ? Icon(
                Icons.check,
                color: context.theme.colorScheme.greenColor,
                size: 16.w,
              )
            : null,
      ),
    );
  }
}
