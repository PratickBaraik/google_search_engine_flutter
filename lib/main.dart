import 'package:flutter/material.dart';
import 'package:google_search_engine/colors.dart';
import 'package:google_search_engine/responsive/mobile_screen_layout.dart';
import 'package:google_search_engine/responsive/responsive_layout.dart';
import 'package:google_search_engine/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Search Engine',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}