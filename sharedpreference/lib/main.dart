import 'package:flutter/material.dart';
import 'package:sharedpreference/page/homepage2.dart';
import 'package:sharedpreference/page/loginpage.dart';
import 'package:sharedpreference/page/nextpage.dart';
import 'package:sharedpreference/page/splashscreen.dart';
import 'package:sharedpreference/page/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
            home:SplashScreen(),
      routes: {
        '/home': (context) => Homepage(),
        '/loginpage':(context) => LoginPage(),
        '/homepage2':(context) => HomePage2(),
        '/thirdpage':(context) => ThirdPage(),
      },
    );
  }
}
