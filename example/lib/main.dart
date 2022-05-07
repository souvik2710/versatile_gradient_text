import 'package:flutter/material.dart';
import 'package:versatile_gradient_text/versatile_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoGradientScreen(),
    );
  }
}

class DemoGradientScreen extends StatelessWidget {
  const DemoGradientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: VersatileGradientText(
        textString: 'Gradient Text',
        colorOne: Colors.yellow,
        colorTwo: Colors.deepOrange,
        fontSize: 40,
        versatileGradientType: VersatileGradientType.radial,
      )),
    );
  }
}
