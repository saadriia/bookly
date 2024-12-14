import 'package:bookly_bloc/core/assets.dart';
import 'package:flutter/material.dart';

class CustomListviewProducts extends StatelessWidget {
  const CustomListviewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
        aspectRatio: 2.8 / 4, 
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
            image:   const DecorationImage(
              fit:BoxFit.fill ,
                image: AssetImage(
                  AssetsData.items0,
                ),
                //fit: BoxFit.cover,
                ),
          ),
        ),
      
    );
  }
}
