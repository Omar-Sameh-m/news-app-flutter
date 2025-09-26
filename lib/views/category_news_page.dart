import 'package:flutter/material.dart';
import 'package:news_app/widgets/News_list_view_builder.dart';

class CategoryNewsPage extends StatelessWidget {
  const CategoryNewsPage({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          NewsListViewBuilder(category: category),
        ],
      ),
    );
  }
}
