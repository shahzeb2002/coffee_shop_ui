import 'package:coffee/models/shop.dart';
import 'package:coffee/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => BubbleTeaShop(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: AppBarThemeData(
          titleTextStyle: TextStyle(wordSpacing: 4,letterSpacing: 5),
          backgroundColor: Colors.brown.shade600,
          elevation: 0,
          centerTitle: true,
        ),
          primarySwatch: Colors.brown,useMaterial3: false,
      ),
      home: const Homepage(),
    ),
    );
  }
}
