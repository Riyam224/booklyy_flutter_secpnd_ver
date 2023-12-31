import 'package:booklyy/core/utils/function/launch_url.dart';
import 'package:booklyy/core/widgets/vustom_button.dart';
import 'package:booklyy/features/home/data/models/books_model/books_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BooksModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: 'free',
            bgcolor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            fontSize: 16,
            text: getText(bookModel),
            bgcolor: const  Color.fromARGB(255, 240, 177, 177),
            textColor: Colors.white,
            borderRadius: const  BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }

  String getText(BooksModel bookModel) {
    if (!(bookModel.volumeInfo.previewLink == null)) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
