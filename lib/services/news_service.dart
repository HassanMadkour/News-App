import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  NewsService({required this.doi});
  final Dio doi;

  // sevice functions

  Future<List<NewsModel>> getNews({required String categoryOfNews}) async {
    try {
      var response = await doi.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=2b96f8eae8e64eb0920982eacd67ef98&category=$categoryOfNews");
      Map<String, dynamic> jsonData = response.data;
      List<NewsModel> news = [];
      for (var element in jsonData["articles"]) {
        news.add(NewsModel.fromJson(element));
      }
      return news;
    } catch (e) {
      return [];
    }
  }
}
