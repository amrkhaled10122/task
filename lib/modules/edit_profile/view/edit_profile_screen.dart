import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/components/buttons/w_button.dart';
import '../../../core/components/inputs/form_fields/w_shared_input.dart';
import '../../../core/components/scaffold/app_bar/w_shared_app_bar.dart';
import '../../../core/components/scaffold/w_shared_scaffold.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../../../core/extensions/color_extension.dart';
import '../../../core/routes/app_pages.dart';
import '../../../core/utils/forms/form_profile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          60.h,
        ),
        child: const WSharedAppBar(
          title: 'Update Information',
        ),
      ),
      body: Form(
        key: FormProfile.key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
            20.heightBox,
            WSharedInput(
              textEditingController: FormProfile.nameController,
              hint: "FullName",
              validator: (value) => GetUtils.isNull(value) ? null : "Required",
            ),
            15.heightBox,
            WSharedInput(
              textEditingController: FormProfile.phoneController,
              hint: "PhoneNumber",
              validator: (value) => GetUtils.isPhoneNumber(value!) ? null : "Required",
            ),
            15.heightBox,
            WSharedInput(
              textEditingController: FormProfile.emailController,
              hint: "Email",
              validator: (value) => GetUtils.isEmail(value!) ? null : "Required",
            ),
            30.heightBox,
            WButton(
              title: "Save",
              onPressed: () => Get.toNamed(Routes.home),
              color: context.theme.colorScheme.primaryColor,
              customTextColor: context.theme.colorScheme.whiteColor,
            ),
          ]),
        ),
      ),
    );
  }
}
