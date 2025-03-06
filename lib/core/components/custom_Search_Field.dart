
import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';

class customSearchField extends StatelessWidget {
  const customSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Search in market",
        suffixIcon: ElevatedButton.icon(
          onPressed: () {},
          label: Icon(Icons.search),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            foregroundColor: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
