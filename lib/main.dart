import 'package:flutter/material.dart';
import 'package:fluttering/models/ArticleModel.dart';
import 'package:fluttering/screens/HomeScreen.dart';
import 'package:fluttering/screens/ListOfArticles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<ArticleModel> articles = [
    ArticleModel('qui est esse', 'est rerum tempore vitaesequi sint nihil'),
    ArticleModel('nesciunt quas odio', 'est rerum tempore vitaesequi sint nihil'),
    ArticleModel('dolorem eum magni eos aperiam quia', 'est rerum tempore vitaesequi sint nihil'),
    ArticleModel('magnam facilis autem', 'est rerum tempore vitaesequi sint nihil'),
    ArticleModel('dolorem dolore est ipsam', 'est rerum tempore vitaesequi sint nihil'),
    ArticleModel('optio molestias id quia eum', 'est rerum tempore vitaesequi sint nihil'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListOfArticles(articles),
    );
  }
}
