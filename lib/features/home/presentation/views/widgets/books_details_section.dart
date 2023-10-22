import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyy/features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(
            imageUrl:
                'https://images.pexels.com/photos/18540855/pexels-photo-18540855/free-photo-of-woman-on-a-beach-standing-and-holding-a-chair.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
        ),
        Text(
          'Party crasher',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Opacity(
          opacity: .6,
          child: Text(
            'cool party crasher ',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
