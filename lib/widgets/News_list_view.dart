import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {

  NewsListView({required this.articles});
  
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        BuildContext context,
        int index,
      ) {
        return NewsTile(articleModel: articles[index]);
      }),
    );
  }
}
