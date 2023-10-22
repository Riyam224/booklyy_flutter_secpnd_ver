import 'package:booklyy/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
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
  }
}
