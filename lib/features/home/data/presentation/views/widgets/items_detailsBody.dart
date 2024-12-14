import 'package:bookly_bloc/core/utils/style.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/similerProduct.dart';
import 'package:flutter/material.dart';

import 'BestSelletListViewItem1.dart';
import 'CustomButton.dart';
import 'Products_action.dart';
import 'custom_Details AppBar.dart';
import 'custom_listView_Products.dart';

class ItemsDetailsbody extends StatelessWidget {
  const ItemsDetailsbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomItemDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomListviewProducts(),
          ),
          const SizedBox(height: 20),
          const Text(
            'face wash',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            'modern,',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),

          // Expanded(
          //   child: CustomBestSelletListViewItem1(),
          // ),
          const SizedBox(height: 5),
          const SellerRating(),
          const SizedBox(height: 20),
          const productsAction(),          const SizedBox(height: 20),

          const Text( 
            ' منتجاتنا ',
            style: Style.textStyle20  ) ,
                    const SizedBox(height: 20),

          const SimelarProductListView(),

        ],
      ),
    );
  }
}
