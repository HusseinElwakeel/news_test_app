import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
  print("Hussein Elwakeel");
  Future.delayed(
    Duration(seconds: 2),
    () => print("Hussein"),
  );
  getOrderName();
}
dynamic getOrderName (){
  var orderName = order();
  print("the order is $orderName");
}
dynamic order(){
  Future.delayed(
    Duration(seconds: 2),
    () => print("coffe"),
  );
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
