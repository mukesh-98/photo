import 'package:flutter/material.dart';

class DetailDash extends StatefulWidget {
  @override
  _DetailDashState createState() => _DetailDashState();
}

class _DetailDashState extends State<DetailDash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(child:Text('You are in Detail tab')),
      ),
    );
  }
}
