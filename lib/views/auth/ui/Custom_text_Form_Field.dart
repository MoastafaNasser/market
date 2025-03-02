import 'package:ecommerce/core/app_colors.dart';
import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  const customTextFormField({
    super.key,
    required this.Labeltext,
    this.suffixIcon,
    this.isSecured = false,
  });
  final String Labeltext;
  final Widget? suffixIcon;
  final bool isSecured;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      obscureText: isSecured,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "this field is Required ";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: Labeltext,
        suffixIcon: suffixIcon,
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
