import 'package:flutter/material.dart';
import 'package:news_app/Model/Article_Model.dart';
import 'package:news_app/Widget/ArticleView.dart';

class NewsListView extends StatelessWidget {
  List<Article_Model> article_List = [];
  NewsListView(this.article_List);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: article_List.length
        ,itemBuilder: (context, index) {
        return ArticleView(article_List[index]);
        
      },),
    );
  }
}