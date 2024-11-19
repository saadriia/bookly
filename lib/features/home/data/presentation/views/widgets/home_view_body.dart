import 'package:bookly_bloc/core/assets.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/custom_listView_Products.dart';
import 'package:flutter/material.dart';

//import 'custom_listView_Products.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [CustomAppBar(), CustomListviewProducts()],
    );
  }
}

class CustomListviewProducts extends StatelessWidget {
  const CustomListviewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
         height: MediaQuery.of(context).size.height*.30,
         width: 150,
      decoration:   BoxDecoration( 
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        image: const DecorationImage(
          image: AssetImage(AssetsData.items , ),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
