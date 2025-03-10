import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'widgets/custom_Row_Btn.dart';

class profileView extends StatelessWidget {
  const profileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Card(
          margin: EdgeInsets.all(8),
          color: AppColors.kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: AppColors.kWhiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 60,
                    ),
                  ],
                ),
              ),
              Text(
                "Uesr name",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email name",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              customRowBtn(
                onTap: () {},
                icon: Icons.person,
                text: "Edit Email"
              ),
              SizedBox(
                height: 10,
              ),
              customRowBtn(
                onTap: () {},
                icon: Icons.shopping_basket,
                text: "My Orders"
              ),
              SizedBox(
                height: 10,
              ),
              customRowBtn(
                onTap: () {},
                icon: Icons.logout,
                text: "Log Out"
              ),
            ],
          ),
        ),
      ),
    );
  }
}

