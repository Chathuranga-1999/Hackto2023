import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main(){
  runApp( const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Guess Game',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
      },
    );
  }
}