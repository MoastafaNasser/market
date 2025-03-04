import 'package:flutter/material.dart';

class storeView extends StatelessWidget {
  const storeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "store View",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
