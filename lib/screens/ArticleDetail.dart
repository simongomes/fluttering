import 'package:flutter/material.dart';
import 'package:fluttering/models/ArticleModel.dart';

class ArticleDetails extends StatelessWidget {

  ArticleModel _article;

  ArticleDetails(ArticleModel article) {
    this._article = article;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Details')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(_article.title, style: TextStyle(fontSize: 18),),
          Divider(),
          Text(_article.description)
        ],
      ),
    );
  }
}
