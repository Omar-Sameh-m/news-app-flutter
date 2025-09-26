import 'package:flutter/material.dart';
import 'package:news_app/widgets/News_list_view_builder.dart';
import 'package:news_app/widgets/category_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text(' Cloud', style: TextStyle(color: Colors.yellow)),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: CategoryListView()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          NewsListViewBuilder(category: 'general'),
        ],
      ),
    );
  }
}
