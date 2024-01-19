import 'package:flutter/material.dart';
import 'package:news_test_app/Widgets/NewsWidget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 13, (context, index) => NewsWidget()));
  }
}
