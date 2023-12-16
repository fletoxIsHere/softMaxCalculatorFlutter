import 'package:flutter/material.dart';
import 'package:softmax/SoftMax.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app model',
      home: ModelApp(),
    ); } }