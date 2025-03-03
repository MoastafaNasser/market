import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom%20Row%20With%20Arrow%20Btn.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';
import 'package:marketapp/views/auth/ui/widgets/custom_Text_Button.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
                    const Text(
                  "welcom to Our market",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              const SizedBox(
                height: 24,
              ),
              Card(
                margin:  const EdgeInsets.all(20),
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
                    customTextFormField(
                      Labeltext: "Password",
                      isSecured: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.visibility_off,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     customTextButton(
                      text: "Forget Password",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     CustomRowWithArrowBtn(
                      text: "Login",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                      CustomRowWithArrowBtn(
                      text: "Login with Google",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customTextButton(
                          text: "Sign Up",
                          onTap: () {},
                        ),

                      ],
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