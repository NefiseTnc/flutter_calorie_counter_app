import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppRadioButton extends StatefulWidget {
  const AppRadioButton({
    Key? key,
    this.size,
    this.selectedSize,
  }) : super(key: key);
  final double? size;
  final double? selectedSize;

  @override
  State<AppRadioButton> createState() => _AppRadioButtonState();
}

class _AppRadioButtonState extends State<AppRadioButton> {
  var isSelected = false;

  void _selected() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selected();
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 6.0),
          width: widget.size ?? 25,
          height: widget.size ?? 25,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: widget.selectedSize ?? 15,
                  height: widget.selectedSize ?? 15,
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primaryColor : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
