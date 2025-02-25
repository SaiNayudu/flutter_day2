import 'package:flutter/material.dart';
import 'package:yt_short/shortsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day2_YtShort',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ShortsPage(tittleName: 'Shorts'),
    );
  }
}
