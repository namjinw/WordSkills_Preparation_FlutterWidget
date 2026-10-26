import 'package:flutter/material.dart';
import 'package:widget_study2/layout/center.dart';
import 'package:widget_study2/layout/container.dart';
import 'package:widget_study2/layout/padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CenterWidget(),
    );
  }
}


