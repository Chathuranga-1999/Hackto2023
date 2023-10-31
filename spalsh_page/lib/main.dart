import 'package:flutter/material.dart';
import 'pages/splashscreen_page.dart';

void main()
{
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp
    (
     home:SplashPage(),
     debugShowCheckedModeBanner: false,
    );
  }
}