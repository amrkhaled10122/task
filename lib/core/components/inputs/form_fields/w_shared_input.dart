import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extensions/app_size_extension.dart';
import '../../../extensions/color_extension.dart';
import '../../../extensions/context_extensions.dart';
import '../../text/w_text.dart';

// [WSharedInput ]is Custom widget for a  input field
class WSharedInput extends StatelessWidget {
  const WSharedInput({
    super.key,
    this.labelText,
    this.focusNode,
    this.autofocus = false,
    this.hint,
    this.textEditingController,
    this.enabled = true,
    this.obscureText = false,
    this.validator,
    this.prefix,
    this.maxLines,
    this.onFieldSubmitted,
    this.minLines,
    this.style,
    this.suffixSvg,
    this.focusColor,
    this.suffix,
    this.suffixIcon,
    this.errorMessage,
    this.readOnly = false,
    this.expands = false,
    this.textInputType = TextInputType.text,
    this.textAlignVertical,
    this.onChanged,
    this.filledColor,
    this.contentPadding,
    this.title,
    this.textInputAction,
    this.inputFormatters,
    this.customDecoration,
    this.filled,
    this.inputHeight,
    this.prefixIcon,
    this.hintStyle,
    this.borderColor,
  });
  final Color? focusColor;
  final String? hint;
  final String? errorMessage;
  final String? labelText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final FormFieldValidator<String>? validator;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? suffixSvg;
  final Widget? prefix;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final bool expands;
  final int? maxLines;
  final int? minLines;
  final Color? filledColor;
  final bool obscureText;
  final TextStyle? style;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final TextAlignVertical? textAlignVertical;
  final EdgeInsets? contentPadding;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? title;
  final bool? filled;
  final double? inputHeight;
  final String? prefixIcon;
  final TextStyle? hintStyle;
  final Color? borderColor;
  final InputDecoration? customDecoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) _buildTitleWidget(title: title!, context: context),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          textAlign: TextAlign.center,
          autofocus: autofocus,
          readOnly: readOnly,
          expands: expands,
          style: style ?? context.textTheme.bodyLarge,
          obscureText: obscureText,
          enabled: enabled,
          onChanged: onChanged,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines,
          minLines: minLines,
          keyboardType: textInputType,
          textInputAction: textInputAction ?? TextInputAction.go,
          decoration: customDecoration ??
              InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: inputHeight ?? 8.h,
                ),
                filled: filled,
                fillColor: filledColor,
                errorStyle: context.theme.textTheme.titleMedium?.copyWith(
                  color: context.theme.colorScheme.redColor,
                ),
                hintStyle: hintStyle ??
                    context.textTheme.labelSmall?.copyWith(
                      color: context.theme.colorScheme.hintColor,
                      fontSize: 16.sp,
                      height: 1.7,
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0.sp,
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0.sp,
                  ),
                  borderSide: BorderSide(
                    color: borderColor ?? context.theme.colorScheme.grey90Color,
                    width: 1.0.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0.sp,
                  ),
                  borderSide: BorderSide(
                    color: context.theme.colorScheme.secondaryColorDark,
                    width: 1.3.w,
                  ),
                ),
                hintText: hint,
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 24.h,
                  maxWidth: 50.w,
                ),
                prefixIcon: prefixIcon == null
                    ? null
                    : Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                        ),
                        child: SvgPicture.asset(
                          prefixIcon ?? '',
                        ),
                      ),
                suffix: suffixIcon ?? const SizedBox(),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 18.h,
                  maxWidth: 50.w,
                ),
              ),
          inputFormatters: inputFormatters ?? <TextInputFormatter>[],
          controller: textEditingController,
          focusNode: focusNode,
        )
      ],
    );
  }

  Widget _buildTitleWidget({required String title, required BuildContext context}) {
    return Column(
      children: [
        WText(
          title,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.8,
          ),
        ),
        12.heightBox,
      ],
    );
  }
}
