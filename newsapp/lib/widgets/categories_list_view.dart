import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(image: "assetss/download.jfif", categoryName: "Business"),
    CategoryModel(image: "assetss/sports.jfif", categoryName: "Sports"),
    CategoryModel(image: "assetss/health.jfif", categoryName: "Health"),
    CategoryModel(image: "assetss/tech.jfif", categoryName: "Technology"),
    CategoryModel(image: "assetss/pol.jfif", categoryName: "Politics")
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
