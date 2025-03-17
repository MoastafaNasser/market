import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:marketapp/core/app_colors.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';
import 'package:marketapp/views/product_Details/ui/widget/comment_list_view.dart';

class ProductUI extends StatelessWidget {
  const ProductUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) { 
    return Column(
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
        SizedBox(
          height: 20,
        ),
        customTextFormField(
          Labeltext: "type your feadback",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              "Comments",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        UserComment(),
        SizedBox(
          height: 15,
        ),
        CustomListView()
      ],
    );
  }
}
