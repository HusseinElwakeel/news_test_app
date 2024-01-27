import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/Services/NewsServices.dart';
import 'package:news_test_app/screens/HomeScreen.dart';

void main() async {
  runApp(const MyApp());
  NewsServices(dio: Dio()).getGeneralNews();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: HomeScreen(),
    );
  }
}
