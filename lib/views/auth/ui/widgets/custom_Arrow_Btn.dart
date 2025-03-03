import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';

class customArrowBtn extends StatelessWidget {
  const customArrowBtn({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        foregroundColor: AppColors.kBordersideColor,
        iconSize: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 7),
        child: Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
