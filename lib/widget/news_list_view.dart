import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widget/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    required this.news,
    super.key,
  });
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) => NewsCard(
          news: news[index],
        ),
      ),
    );
  }
}
