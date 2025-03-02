import 'package:ecommerce/core/app_colors.dart';
import 'package:ecommerce/views/auth/ui/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ourmarket());
}

class Ourmarket extends StatelessWidget {
  const Ourmarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ourmarket',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
      ),
      
      home: LoginView(),
    );
  }
}

