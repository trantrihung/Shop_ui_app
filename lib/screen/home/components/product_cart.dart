import 'package:flutter/material.dart';
import 'package:shop_ui_app/misc/constants.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    this.bgColor = const Color(0xFFEFEFF2),
  }) : super(key: key);

  final String title;
  final int price;
  final String image;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.black54,
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  "${price}",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
