import 'package:flutter/material.dart';
import 'package:marketapp/core/components/custom_Search_Field.dart';
import 'package:marketapp/core/components/prodcut_list.dart';
import 'package:marketapp/views/home/ui/widgets/Category_list.dart';

class storeView extends StatelessWidget {
  const storeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Welcom To Our Market",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          customSearchField(),
          SizedBox(
            height: 20,
          ),
       
          productList(),
        ],
      ),
    );
  }
}
