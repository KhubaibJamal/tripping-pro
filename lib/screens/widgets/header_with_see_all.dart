import 'package:flutter/material.dart';

class HeaderWithSeeAllButton extends StatelessWidget {
  final String title;
  final bool? isShowViewAll;
  final VoidCallback? onTap;
  final bool? isBold;

  const HeaderWithSeeAllButton({
    super.key,
    required this.title,
    this.isShowViewAll = true,
    this.onTap,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Alata',
            fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
            fontSize: 20,
            height: 1.0,
            color: const Color(0xFF292C2B),
            letterSpacing: 1.0,
          ),
        ),
        isShowViewAll == true
            ? GestureDetector(
              onTap: onTap,
              child: Text(
                "See All",
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  color: const Color(0xFF292C2B),
                  letterSpacing: 1.0,
                ),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }
}
