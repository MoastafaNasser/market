import 'package:flutter/material.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/core/components/cached_image.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_E_Button.dart';
import 'package:marketapp/views/product_Details/ui/product_details_view.dart';

class productcard extends StatelessWidget {
  const productcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsView(),
          ),
        );
      },
      child: Card(
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
                  child: cachedImage(
                    ImageUrl:
                        "https://static.wixstatic.com/media/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg/v1/fill/w_1300%2Ch_693%2Cal_c/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg",
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
    );
  }
}
