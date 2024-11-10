import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<NewsModel>> news;
  @override
  void initState() {
    super.initState();
    news = NewsService(doi: Dio()).getNews(categoryOfNews: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: news,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return NewsListView(news: snapshot.data ?? []);
            } else {
              return const SliverToBoxAdapter(child: Text("noData"));
            }
          } else {
            return const SliverToBoxAdapter(
                child: Text("there is an error , try again"));
          }
        });
  }
}
