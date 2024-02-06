import 'package:flutter/material.dart';
import 'package:news_test_app/Models/ArticleModel.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key,required this.article});
   final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              image:NetworkImage(
                // ?? if null do ......
                article.Image??"https://hellofaread.com/wp-content/uploads/2019/10/Latest-News-1.jpg"
                 ),
              height: 250,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Text(article.Title??"News...",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
           article.Description??"News........................",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
