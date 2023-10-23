import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyy/features/home/presentation/views/widgets/featuredBookListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          // todo 
          const FeaturedBooksListView(),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Newest books',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          // todo 
          const BestSellerListView()
        ],
      ),
    );
  }
}
