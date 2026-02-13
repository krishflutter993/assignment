import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsFeedApp(),
    );
  }
}

class NewsFeedApp extends StatefulWidget {
  const NewsFeedApp({super.key});

  @override
  State<NewsFeedApp> createState() => _NewsFeedAppState();
}

class _NewsFeedAppState extends State<NewsFeedApp> {
  List articles = [];
  bool isLoading = true;

  final String apiKey = "a3d9eb01d4de82b9b8d0849ef604dbed";

  Future<void> fetchNews() async {
    final url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=$apiKey";

    try {
      final response = await http.get(Uri.parse(url));
      final data = jsonDecode(response.body);

      setState(() {
        articles = data["articles"];
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Error fetching news")));
    }
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News Feed App"), centerTitle: true),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 4,
                  child: ListTile(
                    title: Text(
                      article["title"] ?? "No Title",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(article["description"] ?? "No Description"),
                  ),
                );
              },
            ),
    );
  }
}
