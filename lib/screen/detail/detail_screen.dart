import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui_app/misc/constants.dart';
import 'package:shop_ui_app/models/Product.dart';

import 'components/color_dot.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding * 2,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        "\$ ${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.black54),
                      )
                    ],
                  ),
                  const Text("Sub title"),
                  const Text(
                    "Colors",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      ColorDot(
                        color: Color(0xFFBEE8EA),
                        isActive: false,
                        press: () {},
                      ),
                      ColorDot(
                        color: Color.fromARGB(255, 12, 29, 213),
                        isActive: true,
                        press: () {},
                      ),
                      ColorDot(
                        color: Color.fromARGB(255, 42, 157, 163),
                        isActive: false,
                        press: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 48,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Add to cart"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
