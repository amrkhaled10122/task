import 'package:flutter/material.dart';

class FormRegister {
  static final GlobalKey<FormState> key = GlobalKey<FormState>();

  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController fullNameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();
  static final TextEditingController confirmPasswordController = TextEditingController();

  static void dispose() {
    phoneController.clear();
    fullNameController.dispose();
    emailController.clear();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
