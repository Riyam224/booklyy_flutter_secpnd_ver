import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyy/features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyy/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyy/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklyy/features/home/presentation/views/widgets/similar_books_section.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
