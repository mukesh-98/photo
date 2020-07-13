import 'package:flutter/material.dart';

import 'package:photo/unsplash/main_page.dart';

class HomeDash extends StatefulWidget {
  @override
  _HomeDashState createState() => _HomeDashState();
}

class _HomeDashState extends State<HomeDash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}
