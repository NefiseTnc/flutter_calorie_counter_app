import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class StepValueWidget extends StatelessWidget {
  const StepValueWidget({
    Key? key,
    required this.stepValue,
  }) : super(key: key);

  final double stepValue;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * .01,
          decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        Container(
          width: size.width * stepValue,
          height: size.height * .01,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}
