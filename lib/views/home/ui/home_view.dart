import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/core/components/custom_Search_Field.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_E_Button.dart';
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Image(
                        image: AssetImage(
                            "assets/images/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg"),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "10% OFF",
                          style: TextStyle(
                            color: AppColors.kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "product there",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: AppColors.kGreyColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "223 LE",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kBlackColor,
                            ),
                          ),
                          Text(
                            "290 LE",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kGreyColor,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CustomEButton(
                        text: "Buy Now",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
