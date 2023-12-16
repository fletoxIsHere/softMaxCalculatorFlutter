import 'package:flutter/material.dart';
import 'dart:math';

class ModelApp extends StatefulWidget {
  const ModelApp({Key? key}) : super(key: key);

  @override
  State<ModelApp> createState() => _ModelAppState();
}

class _ModelAppState extends State<ModelApp> {
  TextEditingController ctr_x1 = TextEditingController();
  TextEditingController ctr_x2 = TextEditingController();
  TextEditingController ctr_x3 = TextEditingController();
  String res = "";

  classifier() {
    double x1 = double.parse(ctr_x1.text);
    double x2 = double.parse(ctr_x2.text);
    double x3 = double.parse(ctr_x3.text);

    double denominator = exp(x1) + exp(x2) + exp(x3);

    double p1 = exp(x1) / denominator;
    double p2 = exp(x2) / denominator;
    double p3 = exp(x3) / denominator;

    setState(() {
      res = 'P1 = $p1\nP2 = $p2\nP3 = $p3';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EMSI: TP ML"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctr_x1,
              style: TextStyle(fontSize: 20, color: Colors.blue),
              decoration: InputDecoration(
                labelText: "x1",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: ctr_x2,
              style: TextStyle(fontSize: 20, color: Colors.blue),
              decoration: InputDecoration(
                labelText: "x2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: ctr_x3,
              style: TextStyle(fontSize: 20, color: Colors.blue),
              decoration: InputDecoration(
                labelText: "x3",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: classifier,
              child: Text("Classifier"),
            ),
            SizedBox(height: 20,),
            Text(
              "Résultat :\n$res",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
