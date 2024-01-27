import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_test_app/screens/HomeScreen.dart';

void main() async {
  runApp(const MyApp());
  print("Hussein Elwakeel");
  Future.delayed(
    Duration(seconds: 2),
    () => print("Hussein"),
  );
  print(await getOrderName());
  Future.delayed(
    Duration(seconds: 1),
    () => print("Hello Hussein"),
  );
  print("Helooooooooooo ");
}

Future<String> getOrderName() async {
  var orderName = await order();
  return "the order is $orderName";
}

Future<String> order() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Coffee",
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
