import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/SingUp_view.dart';
import 'package:marketapp/views/auth/ui/forget_view.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom%20Row%20With%20Arrow%20Btn.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';
import 'package:marketapp/views/auth/ui/widgets/custom_Text_Button.dart';
import 'package:marketapp/views/nav_Bar/ui/main_home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    customTextFormField(
                      Labeltext: "Password",
                      keyboardType: TextInputType.visiblePassword,
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetView(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowWithArrowBtn(
                      text: "Login",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowWithArrowBtn(
                      text: "Login with Google",
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainHomeView(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customTextButton(
                          text: "Sign Up",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingupView(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
