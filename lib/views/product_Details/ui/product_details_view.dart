import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/core/functions/build_App_Bar.dart';

import '../../../core/components/cached_image.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcustomAppBar(context, "Product Name"),
      body: ListView(
        children: [
          cachedImage(
            ImageUrl:
                "https://static.wixstatic.com/media/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg/v1/fill/w_1300%2Ch_693%2Cal_c/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg",
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "200 EL",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("3"),
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      color: AppColors.kGreyColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "product description",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
