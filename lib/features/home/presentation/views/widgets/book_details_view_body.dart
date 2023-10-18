import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
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
        ],
      ),
    );
  }
}
