import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Tech Line",
        debugShowCheckedModeBanner:false,
        theme: ThemeData(primaryColor: Colors.blue),
        darkTheme: ThemeData.dark(),
        routes: {},
        home: HomePage());
  }
}