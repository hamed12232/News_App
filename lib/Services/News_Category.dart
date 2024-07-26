
import 'package:dio/dio.dart';
import 'package:news_app/Model/Article_Model.dart';

class News_Services {
  final dio = Dio();
  Future<List<Article_Model>> getHttp( String category) async {
    try {
  Response respose = await dio.get(
  'https://gnews.io/api/v4/top-headlines?category=${category}&apikey=3651026a6271edf7989e20540ed7d8c1&country=eg');
  Map<String, dynamic> jsonData = respose.data;
  List<dynamic> articles = jsonData["articles"];
  List<Article_Model> Article_List = [];
  for (var article in articles) {
    Article_Model articleModel = Article_Model.fromJson(article);
    Article_List.add(articleModel);
  }
  
  return Article_List;
}  catch (e) {
  return [];
}
  }
}