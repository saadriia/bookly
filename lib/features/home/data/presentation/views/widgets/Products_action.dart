import 'package:flutter/material.dart';

import 'CustomButton.dart';

class productsAction extends StatelessWidget {
  const productsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Custombutton(
            Texty: 'عرض التفاصيل',
            backgroundColor: Color.fromARGB(255, 121, 11, 11),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              //topRight: Radius.circular(105),
              bottomLeft: Radius.circular(105),
            ),
          ),
        ),
        Expanded(
          child: Custombutton(
            Texty: '19.99 LE ',
            backgroundColor: Colors.black87,
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              //topLeft: Radius.circular(10),
              topRight: Radius.circular(105),
              //bottomLeft: Radius.circular(105),
            ),
          ),
        ),
      ],
    );
  }
}
