import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui_app/misc/constants.dart';
import 'package:shop_ui_app/models/Category.dart';
import 'package:shop_ui_app/screen/home/components/popular.dart';

import 'components/category_card.dart';
import 'components/new_arrival.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text("19/11 Viet Nam",
                style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            const SearchForm(),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(demo_categories.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultPadding * 1.2),
                    child: CategoryCard(
                        icon: demo_categories[index].icon,
                        title: demo_categories[index].title,
                        press: () {}),
                  );
                }),
              ),
            ),
            const SizedBox(height: 32),
            const NewArrival(),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
