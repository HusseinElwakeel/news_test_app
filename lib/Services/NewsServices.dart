import 'package:dio/dio.dart';

class NewsServices{
  NewsServices({required this.dio});
  final Dio dio;

  void getGeneralNews() async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=eg&category=sports');
    print(response);
  }
  void getSportsNews() async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=eg&category=sports');
    print(response);
  }

  getNews(){

  }
}