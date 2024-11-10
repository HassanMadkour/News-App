class NewsModel {
  final String titleOfNews;
  final String subTitleOfNews;
  final String? imageOfNews;
  final String urlOfNews;
  const NewsModel(
      {required this.subTitleOfNews,
      required this.urlOfNews,
      required this.titleOfNews,
      required this.imageOfNews});
  factory NewsModel.fromJson(json) {
    return NewsModel(
        subTitleOfNews: json["description"] ?? "No discription",
        urlOfNews: json["url"],
        titleOfNews: json["title"],
        imageOfNews: json["urlToImage"]);
  }
}
