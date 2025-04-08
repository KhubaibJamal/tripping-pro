import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Color? boxColor;
  final Color? svgIconColor;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.boxColor,
    this.svgIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Container(
        height: 20,
        width: 20,
        // padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color:
              boxColor ??
              (isChecked ? CustomColors.primary : CustomColors.white),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: CustomColors.primary, width: 2.0),
        ),
        child:
            isChecked
                ? Center(
                  child: Icon(
                    Icons.check,
                    size: 16,
                    color: svgIconColor ?? CustomColors.primaryTextColor,
                  ),
                )
                : null,
      ),
    );
  }
}
