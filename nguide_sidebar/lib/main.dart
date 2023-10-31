import 'package:flutter/material.dart';
import 'package:nguide_sidebar/pages/sidebar.dart';




void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return  const MaterialApp
    (
    home: SideBar(),
    debugShowCheckedModeBanner: false,
    );
  }
}