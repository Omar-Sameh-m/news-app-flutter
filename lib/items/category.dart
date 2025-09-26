import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_news_page.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryNewsPage(category: model.CategoryName);
            },
          ),
        );
      },
      child: Container(
        height: 110,
        width: 190,
        margin: EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(model.PhotoUrl),
          ),
        ),
        child: Center(
          child: Text(
            model.CategoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
