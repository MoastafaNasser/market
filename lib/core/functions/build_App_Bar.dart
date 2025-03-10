
  import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar buildcustomAppBar(BuildContext context , String title) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.kPrimaryColor,
      title: Text(
        title,
        style: TextStyle(color: AppColors.kWhiteColor),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.kWhiteColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }