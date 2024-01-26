import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
  getHttp();

}

final dio = Dio();
void getHttp() async {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=788c7ef99218431a9bb511b97cc976aa&country=eg&category=sports');
  print(response);
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
