import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: const DecisionMakingApp(),
    ),
  ));
}

class DecisionMakingApp extends StatefulWidget {
  const DecisionMakingApp({super.key});

  @override
  State<DecisionMakingApp> createState() => _DecisionMakingAppState();
}

class _DecisionMakingAppState extends State<DecisionMakingApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: InkWell(
            enableFeedback: false,
            onTap: () {
              changeBallNumber();
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
}
