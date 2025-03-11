import 'package:flutter/material.dart';
import 'package:marketapp/core/components/prodcut_list.dart';
import 'package:marketapp/core/functions/build_App_Bar.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcustomAppBar(context, "My Orders"),
      body: productList(
        shrinkWrap: false,
        physics: BouncingScrollPhysics(),
      ),

    );
  }
}