import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/article_page.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticlePage(url: news.urlOfNews),
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: news.imageOfNews != null
                  ? CachedNetworkImage(
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.info),
                      imageUrl: news.imageOfNews!,
                      fit: BoxFit.fill,
                      height: 260,
                    )
                  : const SizedBox(height: 260, child: Icon(Icons.info)),
            ),
          ),
          Text(
            news.titleOfNews,
            maxLines: 2,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            news.subTitleOfNews,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ]),
      ),
    );
  }
}
