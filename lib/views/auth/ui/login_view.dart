
import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/Custom%20Row%20With%20Arrow%20Btn.dart';
import 'package:marketapp/views/auth/ui/Custom_text_Form_Field.dart';

import 'package:marketapp/views/auth/ui/custom_Text_Button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "welcom to Our market",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  customTextFormField(
                    Labeltext: " Email",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  customTextFormField(
                    Labeltext: "Password",
                    isSecured: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextButton(
                    text: "Forget Password",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomRowWithArrowBtn(
                    text: "Login",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomRowWithArrowBtn(
                    text: "Login with Google",
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

