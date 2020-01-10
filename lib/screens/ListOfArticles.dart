import 'package:flutter/material.dart';
import 'package:fluttering/models/ArticleModel.dart';
import 'package:fluttering/screens/ArticleDetail.dart';

class ListOfArticles extends StatelessWidget {

  List<ArticleModel> _articles;

  ListOfArticles(List<ArticleModel> articles) {
    this._articles = articles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News'),),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(_articles[index].title),
                subtitle: Text(_articles[index].description),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ArticleDetails(_articles[index]);
                    }));
              },
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: _articles.length
      )
    );
  }
}
