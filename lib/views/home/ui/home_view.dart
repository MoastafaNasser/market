import 'package:flutter/material.dart';
import 'package:marketapp/core/components/custom_Search_Field.dart';
import 'package:marketapp/core/components/prodcut_list.dart';
import 'package:marketapp/views/home/ui/widgets/Category_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          customSearchField(),
          SizedBox(height: 20),
          Image.asset("assets/images/6922108.jpg"),
          SizedBox(height: 20),
          Text(
            "popular categories",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          categoriesList(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Recently productes",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          productList(),
        ],
      ),
    );
  }
}

