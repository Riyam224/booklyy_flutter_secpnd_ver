
import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 19,
        ),
        Text('5.5',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '(2324)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
