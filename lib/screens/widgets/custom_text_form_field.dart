import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.minLine,
    this.maxLine,
    this.formaters,
    this.isReadOnly,
    this.focusNode,
    this.validator,
    this.fillColor,
    this.onChange,
    this.prefix,
    this.keyboard,
    this.action,
    this.suffix,
    this.dense,
    this.isPhoneNumber,
    this.autovalidate,
    this.isPasswordField = false,
    this.isCloseField = false,
    this.enabled,
    this.onTextFieldTap,
    this.prefixIcon,
    this.maxLength,
    this.textAlign,
    this.isLeftBorder,
    this.isRightBorder,
    this.textStyle,
    this.contentPadding,
    this.hintStyle,
    this.searchSvgColor,
    this.autofillHints,
    this.prefixContainer,
    this.hasFullBorder = false,
  });
  final String? hintText;
  final TextEditingController? controller;
  final int? minLine;
  final int? maxLine;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidate;
  final bool? isReadOnly;
  final List<TextInputFormatter>? formaters;
  // final CustomTextFieldValidator? validator;
  final String? Function(String? value)? validator;
  final Color? fillColor;
  final Function(dynamic value)? onChange;
  final Widget? prefix;
  final String? prefixIcon;
  final Widget? prefixContainer;

  final TextInputAction? action;
  final TextInputType? keyboard;
  final Widget? suffix;
  final bool? dense;
  final bool isPasswordField;
  final bool isCloseField;
  final bool? enabled;
  final bool? isPhoneNumber;
  final VoidCallback? onTextFieldTap;
  final int? maxLength;
  final TextAlign? textAlign;
  final bool? isLeftBorder;
  final bool? isRightBorder;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final Color? searchSvgColor;
  final List<String>? autofillHints;
  final bool? hasFullBorder;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      autofillHints: widget.autofillHints,
      maxLength: widget.maxLength,
      textAlign: widget.textAlign ?? TextAlign.start,
      onTap: widget.onTextFieldTap,
      obscureText: widget.isPasswordField == true ? obscureText : false,
      controller: widget.controller,
      autovalidateMode: widget.autovalidate,
      focusNode: widget.focusNode,
      inputFormatters: widget.formaters,
      textInputAction: widget.action,
      keyboardAppearance: Brightness.light,
      readOnly: widget.isReadOnly ?? false,
      style:
          widget.textStyle ??
          TextStyle(
            fontSize: context.font.normal,
            color: Colors.black,
            // color: CustomColors.primaryTextColor,
          ),
      minLines: widget.minLine ?? 1,
      maxLines: widget.maxLine ?? 1,
      onChanged: widget.onChange,
      validator: widget.validator,
      keyboardType: widget.keyboard,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,

        prefix: Padding(
          padding: EdgeInsets.only(right: 14),
          child: widget.prefix,
        ),
        prefixIcon:
            widget.prefixIcon != null
                ? Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(
                    widget.prefixIcon!,
                    colorFilter: ColorFilter.mode(
                      widget.searchSvgColor ?? CustomColors.secondaryTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                )
                : widget.prefixContainer,
        isDense: widget.dense,
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.isPasswordField)
              IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: passwordIcon(obscureText),
              ),
            if (widget.isCloseField)
              IconButton(
                onPressed: () {
                  widget.controller?.clear();
                  if (widget.onChange != null) {
                    widget.onChange!('');
                  }
                },
                icon: SvgPicture.asset(MediaConstants.closeIcon),
              ),
            if (widget.suffix != null) widget.suffix!,
          ],
        ),
        hintText: widget.hintText,
        hintStyle:
            widget.hintStyle ??
            Theme.of(context).textTheme.displayMedium!.copyWith(
              color: CustomColors.textFieldHintColor,
              fontSize: context.font.large,
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: 0.0,
            ),
        filled: true,
        fillColor: widget.fillColor ?? CustomColors.textFieldFillColor,
        border:
            widget.hasFullBorder == true
                ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                )
                : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                ),
        focusedBorder:
            widget.hasFullBorder == true
                ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                )
                : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                ),
        enabledBorder:
            widget.hasFullBorder == true
                ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                )
                : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.textFieldBorder,
                    width: 2.0,
                  ),
                ),
        errorBorder:
            widget.hasFullBorder == true
                ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                )
                : const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
      ),
    );
  }

  Icon passwordIcon(bool obscure) {
    return obscure
        ? const Icon(Icons.visibility, color: CustomColors.primary)
        : const Icon(Icons.visibility_off, color: CustomColors.primary);
  }
}
