import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/Models/ArticleModel.dart';
import 'package:news_test_app/Services/NewsServices.dart';
import 'package:news_test_app/Widgets/NewsWidget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Future<Widget> build(BuildContext context) async{
    List<ArticleModel>article = await NewsServices(dio: Dio()).getGeneralNews();
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 13, (context, index) => NewsWidget()));
  }
}
