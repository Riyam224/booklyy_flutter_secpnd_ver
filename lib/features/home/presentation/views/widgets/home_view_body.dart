import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:booklyy/features/home/presentation/views/widgets/featuredBookListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.titleStyle18,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
