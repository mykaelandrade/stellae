import 'package:flutter/material.dart';
import 'package:stellae/helper/strings.dart';
import 'package:stellae/ui/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(AppStrings.appName)
    );
  }
}
