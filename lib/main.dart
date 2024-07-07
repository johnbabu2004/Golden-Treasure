import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:myapp/screens/homepage.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'My App',
      home:DefaultTabController(
        length: 5,
        child: MyHomePage(),
      )
    );
  }
}