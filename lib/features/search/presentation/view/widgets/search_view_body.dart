import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:booklyy/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'search result',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
