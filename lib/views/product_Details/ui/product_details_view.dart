import 'package:flutter/material.dart';
import 'package:marketapp/core/functions/build_App_Bar.dart';

import '../../../core/components/cached_image.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcustomAppBar(context, "Product Name"),

      body:cachedImage(
                    ImageUrl:
                        "https://static.wixstatic.com/media/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg/v1/fill/w_1300%2Ch_693%2Cal_c/97d359_15028f250eb24051bde6447c8b4ca51e~mv2.jpg",
                  ), 

    );
  }
}