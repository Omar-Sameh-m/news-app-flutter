import 'package:flutter/material.dart';
import 'package:news_app/items/category.dart';
import 'package:news_app/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(PhotoUrl: 'assets/business.avif', CategoryName: 'Business'),
    CategoryModel(
      PhotoUrl: 'assets/entertaiment.avif',
      CategoryName: 'Entertainment',
    ),
    CategoryModel(PhotoUrl: 'assets/sports.avif', CategoryName: 'sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Category(model: categories[index]);
        },
      ),
    );
  }
}
