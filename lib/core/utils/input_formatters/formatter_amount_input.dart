import 'package:flutter/services.dart';

class FormatterAmountInput extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.startsWith('0')) {
      // Remove the leading zero
      return TextEditingValue(
        text: newValue.text.replaceFirst(RegExp(r'^0'), ''),
        selection: newValue.selection.copyWith(
          baseOffset: newValue.selection.baseOffset - 1,
          extentOffset: newValue.selection.extentOffset - 1,
        ),
      );
    }
    return newValue;
  }
}
