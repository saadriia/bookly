import 'package:bookly_bloc/core/assets.dart';
import 'package:flutter/material.dart';

class CustomListviewProducts extends StatelessWidget {
  const CustomListviewProducts({super.key, required this.ImageUrl});
//https://images-na.ssl-images-amazon.com/images/I/61LkaKfxdaL._SL100_.jpg
final String ImageUrl  ;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey,
          image:   DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              ImageUrl,
            ),
            //fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
