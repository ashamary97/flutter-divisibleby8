

import 'package:divisible_by_8/screen/divisibleby8.dart';
import 'package:flutter/material.dart';

void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Divisible by 8"),
          backgroundColor: Colors.deepPurple,

        ),
        body: Divisible(),
      ),
    );
  }
}
