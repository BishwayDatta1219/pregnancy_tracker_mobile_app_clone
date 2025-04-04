import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/ui/pages/home_page/home_page.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/ui/pages/landing_page/landing_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
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
      home: LandingPage(),
    );
  }
}
