import 'package:bookly_bloc/core/utils/widgets/Loading_indcator.dart';
import 'package:bookly_bloc/core/utils/widgets/custom_errors.dart';
import 'package:bookly_bloc/features/home/data/presentation/manager/featured_product_cubit/featured_product_cubit.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/custom_listView_Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SlideViweItems extends StatelessWidget {
  const SlideViweItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedProductCubit, FeaturedProductState>(
      builder: (context, state) {
        if (state is FeaturedProductSuccess) {
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
        } else if (state is FeaturedProductFailuir) {
          return CustomErrors(errMessage: state.errorMessage);
        } else {
          return LoadingIndcator(); // Loading indicator
        }
      },
    );
  }
}
