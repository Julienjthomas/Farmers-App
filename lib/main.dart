import 'package:flutter/material.dart';
import 'package:farmersflutter/screens/start_screen.dart';
import 'package:provider/provider.dart';
import 'farmers_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>FarmersData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen(),

      ),
    );
  }
}
