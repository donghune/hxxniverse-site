import 'package:flutter/material.dart';
import 'package:hxxstella_site/pages/home_page.dart';

class HxxstellaApplication extends StatelessWidget {
  const HxxstellaApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hxxstella',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Pretendard',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black
      ),
      home: const HomePage(),
    );
  }
}
