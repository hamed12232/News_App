
import 'package:flutter/material.dart';
import 'package:news_app/Model/Article_Model.dart';
import 'package:news_app/Services/News_Category.dart';
import 'package:news_app/Widget/NewsListView.dart';

class NewsListViewsBuilder extends StatefulWidget {
  @override
  const NewsListViewsBuilder(this.category);
  final String category;
  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  @override
  var future;
  void initState() {
    super.initState();
    future= News_Services().getHttp(widget.category);
  }
  Widget build(BuildContext context) {

    return FutureBuilder<List<Article_Model>>
    (future: future, builder: (context,snapShot){
      if(snapShot.hasData){
        return NewsListView(snapShot.data??[]);
      }else if(snapShot.hasError){
        return const Text(" oops there  was an erro try later");  
      }else{
         return const Center(child: CircularProgressIndicator());
        
      }
    });
   
        
  }
}
