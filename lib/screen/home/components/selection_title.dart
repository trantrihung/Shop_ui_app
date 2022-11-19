import 'package:flutter/material.dart';

class SelectionTitle extends StatelessWidget {
  const SelectionTitle({
    Key? key,
    required this.title,
    required this.preesSeeAll,
  }) : super(key: key);

  final String title;
  final VoidCallback preesSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
          onPressed: preesSeeAll,
          child: const Text(
            "See All",
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }
}
