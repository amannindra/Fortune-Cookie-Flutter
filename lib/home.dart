import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  var fortuneCookies = [
    "You will have a pleasant surprise soon.",
    "A fresh start will put you on your way.",
    "A faithful friend is a strong defense.",
    "Good news will come to you by mail.",
    "Adventure can be real happiness.",
    "Now is the time to try something new.",
    "A golden opportunity is coming your way.",
    "Your ability for accomplishment will follow with success.",
    "Happiness is an activity.",
    "Your hard work will soon pay off.",
  ];
  @override
  Widget build(BuildContext context) {
    String cookie = fortuneCookies[0];
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: Text(cookie)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            fortuneCookies.shuffle();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
