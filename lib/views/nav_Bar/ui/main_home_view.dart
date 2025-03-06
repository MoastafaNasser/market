import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/home/favorits/ui/favorite_view.dart';
import 'package:marketapp/views/home/profile/ui/profile_view.dart';
import 'package:marketapp/views/home/store/ui/store_view.dart';
import 'package:marketapp/views/home/ui/home_view.dart';
import 'package:marketapp/views/nav_Bar/logic/cubit/nav_bar_cubit.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List<Widget> View = [
    const HomeView(),
    const storeView(),
    const FavoriteView(),
    const profileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();

          return Scaffold(
            body: SafeArea(
              child: View[cubit.CurrentIndex],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(color: AppColors.kWhiteColor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: GNav(
                  onTabChange: (value) {
                    cubit.changeCurrentIndex(value);
                  },
                  rippleColor: Colors.white.withOpacity(0.1),
                  hoverColor: Colors.white.withOpacity(0.1),
                  haptic: true,
                  tabBorderRadius: 25,
                  // tabActiveBorder: Border.all(color: Colors.black, width: 1),
                  // tabBorder: Border.all(color: Colors.white, width: 1),
                  tabShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5), blurRadius: 8)
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
        },
      ),
    );
  }
}
