import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';

class CustomRadioButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomRadioButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: CustomColors.primary, width: 2),
            ),
            child:
                isSelected
                    ? Center(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.primary,
                        ),
                      ),
                    )
                    : null,
          ),
          SizedBox(width: 8.0),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              height: 22 / 14,
              letterSpacing: 0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
