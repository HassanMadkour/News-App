import 'package:flutter/material.dart';
import 'package:news_app/models/catogery_model.dart';
import 'package:news_app/views/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(
                category: categoryModel.catogeryName,
              ),
            ));
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: .8,
            image: AssetImage(categoryModel.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 8, bottom: 8),
        width: 180,
        child: Text(
          categoryModel.catogeryName.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
