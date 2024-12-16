import 'package:bookly_bloc/core/assets.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/custom_listView_Products.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/style.dart';
import 'SlideViewItems.dart';

//import 'custom_listView_Products.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomAppBar(),
          // CustomListviewProducts(),
          SlideViweItems(),
          SizedBox(
            height: 10,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Center(
                    child: Text(
                      'أحدث العروض ',
                      style: Style.textStyle24,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          BestSelletListViewItemlist(),
          //BestSelletListViewItemlist(),

          Row(
            children: [
              //BestSelletListViewItemlist(),
              //BestSelletListViewItemlist(),
            ],
          ),
          //  BestSelletListViewItem(),
          //BestSelletListViewItem1(),
        ],
      ),
    );
  }
}

class BestSelletListViewItem1 extends StatelessWidget {
  const BestSelletListViewItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,

      //MediaQuery.of(context).size.height * .15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AspectRatio(
            //MainAxisAlignment: MainAxisAlignment.center,
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.items,
                  ),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Center(
                  child: Text(
                    "مغلسة للوجه رخام مدهب 2*2'",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("السعر 200 ريال '"),
              const SellerRating(),
            ],
          ),
        ],
      ),
    );
  }
}

class SellerRating extends StatelessWidget {
  const SellerRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('4.5/5'),
        Icon(Icons.star, color: Color.fromARGB(255, 236, 92, 9), size: 20),
      ],
    );
  }
}

class BestSelletListViewItemlist extends StatelessWidget {
  const BestSelletListViewItemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //  padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          //  mainAxisAlignment: MainAxisAlignment.start,

          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSelletListViewItem1(),
          );
        },
      ),
    );
  }
}
