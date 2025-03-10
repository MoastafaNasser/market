
import 'package:flutter/material.dart';

import '../app_colors.dart';

class customCircularIndicator extends StatelessWidget {
  const customCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.kPrimaryColor,
      ),
    );
  }
}