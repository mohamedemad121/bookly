import 'package:bookley/Features/Search/presentetion/views/widgets/custom_text_field_search.dart';

import 'package:bookley/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSerchTextField(),
          SizedBox(height: 16),

          Align(
            alignment: Alignment.centerLeft,

            child: Text('Search result', style: Styles.textStyle18),
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,

      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
        //
        child: Text('data'),
        );
      },
    );
  }
}
