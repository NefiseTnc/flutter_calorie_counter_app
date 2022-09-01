import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.iconData,
    this.radius,
    this.textFontSize,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final IconData? iconData;
  final double? radius;
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
          borderRadius: BorderRadius.circular(radius ?? 11),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconData == null ? const SizedBox() : const Icon(Icons.add),
              const SizedBox(width: 5),
              Text(
                text,
                style: TextStyle(
                  fontSize: textFontSize ?? 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
