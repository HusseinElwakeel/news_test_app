import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/Models/NewsSectionModel.dart';

class NewsSectionsWidget extends StatelessWidget {
  const NewsSectionsWidget({super.key, required this.NewsSection});
  final NewsSectionModel NewsSection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(NewsSection.Image),
                fit: BoxFit.fill)),
        child: Center(
          child: Text(
            NewsSection.NewsName,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
