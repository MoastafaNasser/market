import 'package:flutter/material.dart';

import 'product_Card.dart';

class productList extends StatelessWidget {
  const productList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return productcard();
        });
  }
}

