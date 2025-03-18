import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/core/components/Show_Msg.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom%20Row%20With%20Arrow%20Btn.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';
import 'package:marketapp/views/auth/ui/widgets/custom_Text_Button.dart';
import 'package:marketapp/views/nav_Bar/ui/main_home_view.dart';
import 'package:marketapp/views/product_Details/logic/cubit/authentication_cubit.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});

  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is SingUpSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MainHomeView(),
            ),
          );
        } 
        if (state is SingUpError) {
          ShowMsg(context, state.message);
        }
      },
      builder: (context, state) {


        return Scaffold(
          body: SafeArea(
            child: state is SingUpLoading
                ? CircularProgressIndicator()
                : SingleChildScrollView(
                    child: Form(
                      key: _formKey,
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
                                  Labeltext: " Name",
                                  keyboardType: TextInputType.name,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
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
                                SizedBox(
                                  height: 20,
                                ),
                                CustomRowWithArrowBtn(
                                  text: "SingUp",
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<AuthenticationCubit>().Regaster(
                                          name: _nameController.text,
                                          email: _emailController.text,
                                          password: _passwordController.text);
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomRowWithArrowBtn(
                                  text: "SingUp with Google",
                                  onTap: () {},
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Already have an account? ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    customTextButton(
                                      text: "Login ",
                                      onTap: () {
                                        Navigator.pop(context);
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
          ),
        );
      },
    );
  }
  @override
  void dispose() {
    
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
