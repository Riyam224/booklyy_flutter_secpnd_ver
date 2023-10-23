import 'package:booklyy/core/widgets/custom_error_widget.dart';
import 'package:booklyy/core/widgets/custom_loading_indicator.dart';
import 'package:booklyy/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyy/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: BestSellerListViewItem(
                bookModel: state.books[index],
              )
              ,
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return CustomError(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
