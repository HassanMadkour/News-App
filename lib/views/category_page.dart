import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ]),
      ),
    );
  }
}
