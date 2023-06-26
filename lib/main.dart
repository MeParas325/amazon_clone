import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(elevation: 0),
        iconTheme: const IconThemeData(color: Colors.black),
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
