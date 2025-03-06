import 'package:flutter/material.dart';

import 'package:marketapp/core/components/custom_Search_Field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        customSearchField(),
      ],
    );
  }
}
