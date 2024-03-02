import 'package:flutter/material.dart';

import '../../../extensions/color_extension.dart';
import '../../../extensions/context_extensions.dart';
import 'w_shared_input.dart';

// [WPasswordInputField ]is Custom widget for a password input field
class WPasswordInputField extends StatefulWidget {
  WPasswordInputField({
    super.key,
    this.labelText,
    this.textEditingController,
    this.focusNode,
    this.hintText,
    this.errorMessage,
    this.validator,
    this.autofocus = false,
    this.onChanged,
    this.contentPadding,
    this.title,
    this.textInputAction,
    this.onFieldSubmitted,
  });
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorMessage;
  String? labelText;
  final String? title;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Function(String)? onFieldSubmitted;
  EdgeInsets? contentPadding;
  @override
  _WPasswordInputFieldState createState() => _WPasswordInputFieldState();
}

class _WPasswordInputFieldState extends State<WPasswordInputField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return WSharedInput(
      title: widget.title,
      labelText: widget.labelText,
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      maxLines: 1,
      validator: widget.validator,
      errorMessage: widget.errorMessage,
      textEditingController: widget.textEditingController,
      obscureText: obscureText,
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onFieldSubmitted,
      contentPadding: widget.contentPadding,
      hint: widget.hintText,
      suffix: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(
            !obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
            size: 24,
            color: context.theme.colorScheme.borderStrokeColor,
          ),
        ),
      ),
    );
  }
}
