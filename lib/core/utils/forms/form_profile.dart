import 'package:flutter/material.dart';

class FormProfile {
  static final GlobalKey<FormState> key = GlobalKey<FormState>();

  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
}
