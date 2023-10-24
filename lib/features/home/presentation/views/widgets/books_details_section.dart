import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/data/models/books_model/books_model.dart';
import 'package:booklyy/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyy/features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BooksModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
    BooksAction(
      bookModel: book,
    ),
      ],
    );
  }
}
