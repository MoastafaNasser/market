import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';

import 'package:marketapp/core/components/custom_Search_Field.dart';

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
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.kPrimaryColor,
                        foregroundColor: AppColors.kWhiteColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(categories[index].iconData, size: 40),
                            
                          ],
                        ),
                      ),
                      
                      Text(categories[index].text),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Category> categories = [
  Category(
    iconData: Icons.sports,
    text: "Sports",
  ),
  Category(
    iconData: Icons.tv,
    text: "Electronics",
  ),
  Category(
    iconData: Icons.collections,
    text: "collections",
  ),
  Category(
    iconData: Icons.games,
    text: "Games",
  ),
  Category(
    iconData: Icons.book,
    text: "Books",
  ),
  Category(
    iconData: Icons.bike_scooter,
    text: "bike",
  ),
];

class Category {
  final IconData iconData;
  final String text;

  Category({required this.iconData, required this.text});
}
