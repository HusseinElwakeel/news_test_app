import 'package:dio/dio.dart';
import 'package:news_test_app/Models/ArticleModel.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
//as dio package
  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=us&category=sports');
    print(response);
  }

//i make it
  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=us&category=general");

    var jsonData = response.data;
    print(jsonData["totalResults"]);
    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articleList = [];
    for (var art in articles) {
      ArticleModel articleData = ArticleModel(
          Image: art["urlToImage"],
          Title: art["title"],
          Description: art["description"],
          //source: Source(id: art["source"]["id"], name: art["source"]["name"])
      );
      articleList.add(articleData);
    }
    return articleList;
  }

}
