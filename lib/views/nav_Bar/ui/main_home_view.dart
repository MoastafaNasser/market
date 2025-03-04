import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:marketapp/core/app_colors.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            child: Center(child: Text("test View" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.kWhiteColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: GNav(
            rippleColor: Colors.white.withOpacity(0.1),
            hoverColor: Colors.white.withOpacity(0.1),
            haptic: true,
            tabBorderRadius: 25,
            // tabActiveBorder: Border.all(color: Colors.black, width: 1),
            // tabBorder: Border.all(color: Colors.white, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 8)
            ],
            // curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 400),
            gap: 8,
            color: AppColors.kGreyColor,
            activeColor: AppColors.kWhiteColor,
            iconSize: 24,
            tabBackgroundColor: AppColors.kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.store,
                text: 'store',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'favorite',
              ),
              GButton(
                icon: Icons.person,
                text: 'person',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
