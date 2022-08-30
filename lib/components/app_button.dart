import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.textFontSize,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final double? textFontSize;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? size.width,
        height: height ?? size.height * .07,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontSize: textFontSize ?? 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
