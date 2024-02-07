import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/Models/ArticleModel.dart';
import 'package:news_test_app/Services/NewsServices.dart';
import 'package:news_test_app/Widgets/NewsWidget.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}
// Scope contain initial State and build ui
class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  @override
  //first state and call once only
  //initState dont allow to put async
  void initState()  {
    // TODO: implement initState
    super.initState();
    //to call the method once
     getGeneralNewS(); //delete await because it dont do any thing after it
  }
  // do only alt + shift + M to refactor method
  Future<void> getGeneralNewS() async {
    articles = await NewsServices(dio: Dio()).getGeneralNews();
  }
//second build UI
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => NewsWidget(
                  article: articles[index],
                )));
  }
}
