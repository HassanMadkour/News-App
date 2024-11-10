import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const NewsApp()));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
