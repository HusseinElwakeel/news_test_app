import 'package:flutter/material.dart';
import 'package:news_test_app/Widgets/NewsSectionsWidget.dart';
import 'package:news_test_app/constant/NewsSectionConstant.dart';

class NewsSectionListViewWidget extends StatelessWidget {
  const NewsSectionListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: NewsSection.length,
        itemBuilder: (context, index) =>
            NewsSectionsWidget(NewsSection: NewsSection[index]),
      ),
    );
  }
}
