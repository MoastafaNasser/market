
import 'package:flutter/material.dart';

import '../../../../../core/app_colors.dart';

class customRowBtn extends StatelessWidget {
  const customRowBtn({
    super.key, this.onTap, required this.icon, required this.text,
  });
final void Function()? onTap;
final IconData icon ;
final String text ;
   @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap:onTap ,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: AppColors.kWhiteColor,
              ),
              Text(
                text,
                style: TextStyle(color: AppColors.kWhiteColor , fontWeight: FontWeight.bold),
              ),
          
              Icon(Icons.arrow_forward_ios, color: AppColors.kWhiteColor),
            ],
          ),
        ),
      ),
    );
  }
}