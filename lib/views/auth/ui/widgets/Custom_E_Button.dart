
import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';

class CustomEButton extends StatelessWidget {
  const CustomEButton({
    super.key, required this.text, this.icon, this.onTap,
  });
    final void Function()? onTap;
  final String text ;
  final Icon ?icon ;
  

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
        padding: const EdgeInsets.symmetric(
            vertical: 14, horizontal: 7),
        child:Text(text),
      ),
    );
  }
}
