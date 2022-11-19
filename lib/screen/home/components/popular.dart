import 'package:flutter/material.dart';
import 'package:shop_ui_app/models/Product.dart';

import 'product_cart.dart';
import 'selection_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          title: "Popular",
          preesSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(demo_product.length, (index) {
              return ProductCart(
                title: demo_product[index].title,
                price: demo_product[index].price,
                image: demo_product[index].image,
                // bgColor: demo_product[index].bgColor,
              );
            }),
          ),
        ),
      ],
    );
  }
}
