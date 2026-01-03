import 'package:flutter/material.dart';

class CommercialApp extends StatelessWidget {
  const CommercialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Tajawal"
      ),
    );
  }
}