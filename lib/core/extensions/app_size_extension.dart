import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// [WidgetSizeExtension]is Extension for easily creating SizedBox with width or height based on screen size
extension WidgetSizeExtension on num {
  Widget get widthBox => SizedBox(
        width: ScreenUtil().setWidth(this is int ? toDouble() : this),
      );

  Widget get heightBox => SizedBox(
        height: ScreenUtil().setHeight(this is int ? toDouble() : this),
      );
}
