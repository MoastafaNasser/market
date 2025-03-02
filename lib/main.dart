
import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/login_view.dart';

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

