import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/nav_Bar/ui/main_home_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://yldjilfbskqkdwvaowug.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlsZGppbGZic2txa2R3dmFvd3VnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDIyMTgwNzYsImV4cCI6MjA1Nzc5NDA3Nn0.yJW1ChnS6NiACfxGHbuszOleFvK2Hg_gGD8-FJs2nvc',
  );
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
      home: MainHomeView(),
    );
  }
}
