import 'package:flutter/material.dart';
import 'package:hotel_it/views/search_view/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (
        BuildContext context,
        SearchViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'SearchView',
            ),
          ),
        );
      },
    );
  }
}
