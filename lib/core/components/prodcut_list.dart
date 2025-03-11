import 'package:flutter/material.dart';

import 'product_Card.dart';

class productList extends StatelessWidget {
  const productList({
    super.key,
    this.shrinkWrap,
    this.physics,
  });

  final bool? shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: physics ?? NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: shrinkWrap ?? true,
        itemBuilder: (context, index) {
          return productcard();
        });
  }
}
