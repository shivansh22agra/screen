import 'package:flutter/material.dart';
import 'package:project/pageview.dart';

import 'HomePage.dart';

void main() {
    //   DevicePreview(
        // enabled: !kReleaseMode,
        // builder: (context) => MyApp()));
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       //   locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: PageViews()
    );
  }
}