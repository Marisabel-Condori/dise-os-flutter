import 'package:disenio_fluter1/pages/home_page.dart';
import 'package:disenio_fluter1/pages/scroll_page.dart';
import 'package:flutter/material.dart';

 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'diseño1',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll',
      routes: {
        '/' : (BuildContext context) => HomePage(),
        'scroll' : (BuildContext context) => ScrollPage(),
      },
    );
  }

}
