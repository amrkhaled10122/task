import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/components/buttons/w_button.dart';
import '../../../core/components/scaffold/w_shared_scaffold.dart';
import '../../../core/components/text/w_text.dart';
import '../../../core/components/w_app_logo.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../../../core/extensions/color_extension.dart';
import '../../../core/routes/app_pages.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          40.heightBox,
          const WAppLogo(title: "Welcome to the app"),
          (1.sh / 5).heightBox,
          WButton(
            title: "Login",
            width: 1.sw / 1.4,
            color: context.theme.colorScheme.primaryColor,
            customTextColor: context.theme.colorScheme.whiteColor,
            onPressed: () => Get.toNamed(Routes.login),
          ),
          20.heightBox,
          WButton(
            title: "Register",
            width: 1.sw / 1.4,
            isWhiteButton: true,
            customBorderColor: context.theme.colorScheme.primaryColor,
            customTextColor: context.theme.colorScheme.primaryColor,
            color: context.theme.colorScheme.whiteColor,
            onPressed: () => Get.toNamed(Routes.register),
          ),
          const Spacer(),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: 'Designed & Developed by '),
                TextSpan(
                  text: 'Ali Fouad',
                  style: TextStyle(fontWeight: FontWeight.bold, color: context.theme.colorScheme.primaryColor),
                ),
              ],
            ),
          ),
          10.heightBox,
        ],
      ),
    );
  }
}
