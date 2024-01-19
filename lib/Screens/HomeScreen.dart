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

      // appBar: AppBar(title: Center(
      //   child: RichText(text: TextSpan(children: [
      //     TextSpan(text: "News",
      //     style: TextStyle(
      //       color: Colors.yellowAccent,
      //       fontSize: 25,
      //     ),
      //     ),
      //     TextSpan(
      //       text: "App",
      //       style: TextStyle(
      //         fontSize: 30
      //       ),
      //     )
      //   ]),),
      // )),
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

      // Padding(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 15,
      //   ),
      //   child: Column(
      //     children: [
      //       NewsSectionListViewWidget(),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       NewsListView(),
      //     ],
      //   ),
      // )

      //NewsSectionListViewWidget(),

      // CustomScrollView(
      //   physics: NeverScrollableScrollPhysics(),
      //   shrinkWrap: false,
      //   slivers: [
      //     // SliverToBoxAdapter(
      //     //   child: SizedBox(
      //     //     height: 100.0,
      //     //     child: ListView.builder(
      //     //       scrollDirection: Axis.horizontal,
      //     //       itemCount: 100,
      //     //       itemBuilder: (context, index) {
      //     //         return SizedBox(
      //     //           width: 100.0,
      //     //           child: Card(
      //     //             color: Colors.cyan[100 * (index % 9)],
      //     //             child: Text('Item $index'),
      //     //           ),
      //     //         );
      //     //       },
      //     //     ),
      //     //   ),
      //     // ),
      //     SliverList(
      //
      //       delegate: SliverChildBuilderDelegate(
      //             (context, index) => Image(image: AssetImage(photos[index])),
      //         childCount: photos.length,
      //       ),
      //     ),
      //
      //   ],
      // ),
    );
  }
}
