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

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    articles = await NewsServices(dio: Dio()).getGeneralNews();
  }

  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => NewsWidget(
                  article: articles[index],
                )));
  }
}
