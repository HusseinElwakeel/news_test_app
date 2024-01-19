import 'package:flutter/material.dart';
import 'package:news_test_app/Widgets/NewsWidget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => NewsWidget(),
      itemCount: 10,
    );
  }
}
