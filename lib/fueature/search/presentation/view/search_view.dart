import 'package:bookly/fueature/search/presentation/view/widget/body_search_view.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BodySearchView(),
      ),
    );
  }
}
