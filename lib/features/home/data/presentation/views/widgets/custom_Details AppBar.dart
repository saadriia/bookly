



import 'package:flutter/material.dart';

class CustomItemDetailsAppBar extends StatelessWidget {
  const CustomItemDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close_rounded)),
          const Spacer(),
          IconButton(onPressed: () {}, icon:const Icon(Icons.shopping_cart_checkout_rounded),),
      ],
    );
  }
}