import 'package:bookly_bloc/core/assets.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/custom_listView_Products.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/style.dart';
import 'BestSelletListViewItem1.dart';
import 'SlideViewItems.dart';

//import 'custom_listView_Products.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(),
                //
                SlideViweItems(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Best Seller',
                      //style: Style.titleStyle,
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      //style: Style.titleStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //
                Row(children: [
                  //
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BestSelletListViewItem1(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem2(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem1(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem2(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem1(),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  //
                  Column(
                    children: [
                      BestSelletListViewItem2(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem1(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem2(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem1(),
                      const SizedBox(
                        height: 5,
                      ),
                      BestSelletListViewItem2(),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Best Seller',
                      //style: Style.titleStyle,
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      //style: Style.titleStyle,
                    ),
                  ],
                ),

                //BestSelletListViewItem2(),

                //  BestSelletListViewItemlist(),
              ],
            ),
          ),
        ),
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
        padding: EdgeInsets.zero,
        itemCount: 10,
        //scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: BestSelletListViewItem1(),
          );
        },
      ),
    );
  }
}

class BestSelletListViewItem2 extends StatelessWidget {
  const BestSelletListViewItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/ItemsDetails');
      },
      child: SizedBox(
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("السعر 200 ريال '"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
