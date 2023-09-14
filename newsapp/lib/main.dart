import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/views/home_view.dart';

void main() {
  //NewsServices(Dio()).getNews();
  runApp(const NewsApp());
}

final dio = Dio();

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    theme: ThemeData(fontFamily: "ADLaM Display"),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
