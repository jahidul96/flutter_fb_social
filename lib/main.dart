import 'package:flutter/material.dart';
import 'package:social_flutter/navigation/bottom_nav.dart';
import 'package:social_flutter/screens/home.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        MainPage.routeName: (context) => const MainPage(),
      },
      home: const MainPage(),
    );
  }
}
