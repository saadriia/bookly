import 'package:bookly_bloc/core/utils/Routers.dart';
import 'package:flutter/material.dart';
import 'package:bookly_bloc/core/assets.dart';
import 'package:go_router/go_router.dart';

class BestSelletListViewItem1 extends StatelessWidget {
  const BestSelletListViewItem1({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
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
                      AssetsData.items0,
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
                  SellerRating(),
                const SizedBox(  height: 5,),
                const Text("السعر 200 ريال '"),
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SellerRating extends StatelessWidget {
  const SellerRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('4.5/5'),
        Icon(Icons.star, color: Color.fromARGB(255, 214, 52, 2), size: 20),
      ],
    );
  }
}
