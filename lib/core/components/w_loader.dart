import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

//  [WLoader]is Custom loader widget using Lottie animation
class WLoader extends StatelessWidget {
  const WLoader({super.key, this.size});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset('assets/animation/zeyada_loader.json', width: size ?? 120.w, height: size ?? 120.h),
    );
  }
}
