import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/components/buttons/w_button.dart';
import '../../../core/components/inputs/form_fields/w_password_input_field.dart';
import '../../../core/components/inputs/form_fields/w_shared_input.dart';
import '../../../core/components/scaffold/w_shared_scaffold.dart';
import '../../../core/components/w_app_logo.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../../../core/extensions/color_extension.dart';
import '../../../core/routes/app_pages.dart';
import '../../../core/utils/forms/form_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Form(
        key: FormRegister.key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView(children: [
            const WAppLogo(title: "Register"),
            40.heightBox,
            WSharedInput(
              textEditingController: FormRegister.fullNameController,
              hint: "FullName",
              validator: (value) => !GetUtils.isNull(value) ? null : "Required",
            ),
            15.heightBox,
            WSharedInput(
              textEditingController: FormRegister.phoneController,
              hint: "PhoneNumber",
              validator: (value) => GetUtils.isPhoneNumber(value!) ? null : "Required",
            ),
            15.heightBox,
            WSharedInput(
              textEditingController: FormRegister.emailController,
              hint: "Email",
              validator: (value) => GetUtils.isEmail(value!) ? null : "Required",
            ),
            15.heightBox,
            WPasswordInputField(
              textEditingController: FormRegister.passwordController,
              hintText: "Password",
              validator: (value) => !GetUtils.isNull(value!) ? null : "Required",
            ),
            15.heightBox,
            WPasswordInputField(
              textEditingController: FormRegister.confirmPasswordController,
              hintText: "Confirm Password",
              validator: (value) => !GetUtils.isNull(value!) &&
                      (FormRegister.confirmPasswordController.text == FormRegister.passwordController.text)
                  ? null
                  : "Required",
            ),
            30.heightBox,
            WButton(
              title: "Register",
              onPressed: () => Get.offAllNamed(Routes.home),
              color: context.theme.colorScheme.primaryColor,
              customTextColor: context.theme.colorScheme.whiteColor,
            ),
            (1.sh / 8).heightBox,
            Center(
              child: InkWell(
                onTap: () => Get.offNamed(Routes.login),
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'ALreadyhaveAcoount?'),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(fontWeight: FontWeight.bold, color: context.theme.colorScheme.primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            15.heightBox,
          ]),
        ),
      ),
    );
  }
}
