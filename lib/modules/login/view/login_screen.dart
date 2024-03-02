import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/components/buttons/w_button.dart';
import '../../../core/components/inputs/form_fields/w_password_input_field.dart';
import '../../../core/components/scaffold/w_shared_scaffold.dart';
import '../../../core/components/w_app_logo.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../../../core/extensions/color_extension.dart';
import '../../../core/utils/forms/form_login.dart';

import '../../../core/components/inputs/form_fields/w_shared_input.dart';
import '../../../core/routes/app_pages.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Form(
        key: FormLogin.key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: ListView(children: [
            40.heightBox,
            const WAppLogo(title: "Login"),
            (1.sh / 5).heightBox,
            WSharedInput(
              textEditingController: FormLogin.emailController,
              hint: "Email",
              validator: (value) => GetUtils.isEmail(value!) ? null : "Required",
            ),
            15.heightBox,
            WPasswordInputField(
              textEditingController: FormLogin.passwordController,
              hintText: "Password",
              validator: (value) => !GetUtils.isNull(value!) ? null : "Required",
            ),
            40.heightBox,
            WButton(
              title: "Login",
              onPressed: () => Get.offAllNamed(Routes.home),
              color: context.theme.colorScheme.primaryColor,
              customTextColor: context.theme.colorScheme.whiteColor,
            ),
            (1.sh / 7).heightBox,
            Center(
              child: InkWell(
                onTap: () => Get.offNamed(Routes.register),
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'Don\'t have an account? '),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(fontWeight: FontWeight.bold, color: context.theme.colorScheme.primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            30.heightBox,
          ]),
        ),
      ),
    );
  }
}
