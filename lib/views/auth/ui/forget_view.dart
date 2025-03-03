import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_E_Button.dart';

import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "Enter your email to reset your password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Card(
              margin: const EdgeInsets.all(20),
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const customTextFormField(
                    Labeltext: " Email",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomEButton(
                    text: "Sumbit",
                    onTap: () {
                      
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
