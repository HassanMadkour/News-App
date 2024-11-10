import 'package:flutter/material.dart';
import 'package:news_app/widget/category_listview.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text("Cloud", style: TextStyle(color: Colors.yellow))
          ])),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(
            child: Divider(
              indent: 150,
              endIndent: 150,
              thickness: 1.3,
              color: Colors.black,
            ),
          ),
          NewsListViewBuilder(
            category: "general",
          ),
        ]),
      ),
    );
  }
}
