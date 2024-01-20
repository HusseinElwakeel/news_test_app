import 'package:flutter/material.dart';
import 'package:news_test_app/Models/NewsSectionModel.dart';
import 'package:news_test_app/Widgets/NewsListView.dart';
import 'package:news_test_app/Widgets/NewsSectionListViewWidget.dart';
import 'package:news_test_app/Widgets/NewsSectionsWidget.dart';
import 'package:news_test_app/Widgets/NewsWidget.dart';
import 'package:news_test_app/constant/NewsSectionConstant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: NewsSectionListViewWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          NewsListView(),
        ],
      ),


    );
  }
}
