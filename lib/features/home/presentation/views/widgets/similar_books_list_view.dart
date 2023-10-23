import 'package:booklyy/core/widgets/custom_error_widget.dart';
import 'package:booklyy/core/widgets/custom_loading_indicator.dart';
import 'package:booklyy/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: CustomBookImage(
                    imageUrl:
                        'https://images.pexels.com/photos/18540855/pexels-photo-18540855/free-photo-of-woman-on-a-beach-standing-and-holding-a-chair.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                );
              }),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomError(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
