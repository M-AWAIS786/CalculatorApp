import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: const homepage(),
    );
  }
}
