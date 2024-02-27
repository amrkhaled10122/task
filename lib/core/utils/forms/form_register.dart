import 'package:flutter/material.dart';

class FormRegister {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  FocusNode phoneFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  void dispose() {
    phoneController.clear();
    fullNameController.dispose();

    phoneFocus.dispose();
    passwordFocus.dispose();
  }
}
