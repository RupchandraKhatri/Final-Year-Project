import 'package:flutter/material.dart';
import 'package:hamro_saman/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamro-Saman',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 252, 250, 250),
        primaryColor: Color(0xffffbd00),
        primaryColorLight: Color(0xffffbd81),
      ),
      home: BottomNavBar(),
    );
  }
}
