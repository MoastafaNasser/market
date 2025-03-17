  import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> ShowMsg(BuildContext context, String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(text),
            backgroundColor: AppColors.kPrimaryColor,
          ),
        );
  }