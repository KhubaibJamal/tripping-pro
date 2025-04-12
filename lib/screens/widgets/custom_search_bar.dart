import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final Function(String)? onChanged;
  final bool? isTopBorder;
  final bool? isBottomBorder;
  final Color? fillColor;
  final bool? showBorder;
  const CustomSearchBar({
    super.key,
    required this.textController,
    required this.hintText,
    this.onChanged,
    this.isTopBorder,
    this.isBottomBorder,
    this.showBorder = false,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withValues(alpha: .1),
          ),
        ],
      ),
      child: TextField(
        controller: textController,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Color(0xFF292C2B)),
          filled: true,
          fillColor: fillColor ?? Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 16.0,
          ),
          border: OutlineInputBorder(
            borderSide:
                showBorder == true
                    ? BorderSide(color: Colors.grey[300]!, width: 1.0)
                    : BorderSide.none,
            borderRadius: getBorderRadius(),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                showBorder == true
                    ? BorderSide(color: Colors.grey[400]!, width: 1.5)
                    : BorderSide.none,
            borderRadius: getBorderRadius(),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                showBorder == true
                    ? BorderSide(color: Colors.grey[400]!, width: 1.5)
                    : BorderSide.none,
            borderRadius: getBorderRadius(),
          ),
        ),
      ),
    );
  }

  BorderRadius getBorderRadius() {
    return isTopBorder == null && isBottomBorder == null
        ? BorderRadius.circular(10)
        : isTopBorder == true
        ? const BorderRadius.vertical(top: Radius.circular(10))
        : isBottomBorder == true
        ? const BorderRadius.vertical(bottom: Radius.circular(10))
        : BorderRadius.zero;
  }
}
