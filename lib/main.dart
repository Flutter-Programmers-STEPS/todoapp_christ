import 'package:flutter/material.dart';
import 'helper/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.pink,
         brightness: Brightness.light,
         primaryColor: Colors.pink,
     ),

      home: SplashScreen(),
    );
  }
}
