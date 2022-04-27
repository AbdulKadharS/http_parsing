import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:parsing/model/album_model.dart';
import 'package:parsing/model/latest_news_article_model.dart';
import 'package:parsing/screen/main_news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<LatestNewsArticleModel> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=G4nXJDzd1AtLIwmeXUVvXcZdLZkTwjvb'));
    final networkData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return LatestNewsArticleModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Error fetching data');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NY Latest News"),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as LatestNewsArticleModel;
            return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  data.results[index].title,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainNewsScreenScreen(
                              newsData: data.results[index])));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemCount: data.results.length,
            );
          } else {
            return const Center(
              child: Text("Loading!!!"),
            );
          }
        }),
      ),
    );
  }
}
