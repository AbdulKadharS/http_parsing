import 'package:flutter/material.dart';
import 'package:parsing/model/news_article_model.dart';

class MainNewsScreenScreen extends StatelessWidget {
  final NewsArticleModel newsData;
  const MainNewsScreenScreen({
    Key? key,
    required this.newsData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          newsData.section,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              newsData.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Abstract",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              newsData.abstract,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
