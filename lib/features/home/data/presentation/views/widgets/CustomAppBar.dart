import 'package:flutter/material.dart';

import '../../../../../../core/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 60,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 30,
              )),
        ],
      ),
    );
  }
}
