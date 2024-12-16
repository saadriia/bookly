import 'package:bookly_bloc/features/home/data/presentation/views/widgets/custom_listView_Products.dart';
import 'package:flutter/material.dart';

class SlideViweItems extends StatelessWidget {
  const SlideViweItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: CustomListviewProducts(),
            );
          }),
    );
  }
}
