
import 'package:flutter/material.dart';
import 'package:marketapp/views/auth/ui/widgets/custom_Arrow_Btn.dart';

class CustomRowWithArrowBtn extends StatelessWidget {
  const CustomRowWithArrowBtn({
    super.key, required this.text, required Null Function() onTap,
  });
  final  String text ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        customArrowBtn(
          onTap: () {},
        ),
      ],
    );
  }
}