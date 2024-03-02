import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:task/core/routes/app_pages.dart';
import 'package:task/core/services/network/dio_provider.dart';
import 'package:task/core/utils/forms/form_register.dart';

class RegisterController extends GetxController {
  // TODO: test api and failed from Api and not complete integeration with api
  // Future<void> registerUser() async {
  //   if (FormRegister.key.currentState!.validate()) {
  //     var data = {
  //       'name': FormRegister.fullNameController.text,
  //       'email': FormRegister.emailController.text,
  //       'phone': FormRegister.phoneController.text,
  //       'password': FormRegister.passwordController.text,
  //       'country_code': '+9631',
  //       'password_confirm': FormRegister.confirmPasswordController.text
  //     };
  //     try {
  //       var response = await DioProvider.httpDio.post(
  //         '/api/user/register',
  //         data: data,
  //       );

  //       if (response.statusCode == 200) {
  //         Get.offAllNamed(Routes.home);
  //         print(json.encode(response.data));
  //       } else {
  //         print(response.statusMessage);
  //       }
  //     } catch (e) {
  //       print(e.toString());
  //     }
  //   }
  // }
}
