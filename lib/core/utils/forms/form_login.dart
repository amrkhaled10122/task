import 'package:flutter/material.dart';

class FormLogin {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  FocusNode phoneFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  void dispose() {
    phoneController.clear();
    passwordController.clear();
    phoneFocus.removeListener(() => {});
    passwordFocus.removeListener(() => {});
    phoneFocus.dispose();
    passwordFocus.dispose();
    phoneController.dispose();
    passwordController.dispose();
    phoneFocus.dispose();
    passwordFocus.dispose();
  }
}
