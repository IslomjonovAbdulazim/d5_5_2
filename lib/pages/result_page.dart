import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  const ResultPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3FF),
      body: Center(
        child: Text("BMI is ${bmi.toStringAsFixed(2)}"),
      ),
    );
  }
}
