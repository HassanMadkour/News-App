import 'package:flutter/material.dart';
import 'package:news_app/models/catogery_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> catogeries = const [
    CategoryModel(
        image: "assets/entertainment.avif", catogeryName: "entertainment"),
    CategoryModel(image: "assets/health.avif", catogeryName: "health"),
    CategoryModel(image: "assets/science.avif", catogeryName: "science"),
    CategoryModel(image: "assets/sports.avif", catogeryName: "sports"),
    CategoryModel(image: "assets/technology.jpeg", catogeryName: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: catogeries.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          categoryModel: catogeries[index],
        ),
      ),
    );
  }
}
