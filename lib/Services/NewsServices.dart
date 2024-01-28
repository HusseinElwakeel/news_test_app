import 'package:dio/dio.dart';
import 'package:news_test_app/Models/ArticleModel.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
//as dio package
  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=eg&category=sports');
    print(response);
  }

//i make it
  getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=eg&category=general");

    //Map<String,dynamic> jsonData = response.data;
    var jsonData = response.data;
    print(jsonData["totalResults"]);
    List<dynamic> articles =jsonData["articles"];
    print(articles);


    for (var article in articles){
      print(article["author"]);
      print(article["title"]);
    }

    // List<dynamic> articleContent =[];
    // for(var art in articles){
    //   List<ArticleModel> arts =[
    //     ArticleModel(Image: art["urlToImage"], Title: art["title"], Description: art["description"]),
    //   ];
    //   print(arts);
    // }
    // articleContent.add(arts);
  }
}
