import 'package:flutter/material.dart';
import 'package:flutter_counter_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar
      (
        title:const Text("First Page"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const Text("You are in the first page"),
            ElevatedButton(
              onPressed: ()
              {
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> const SecondPage()),
                   );
              },
              child: const Text("Go to the second Page"),
              )
          ]
        ),
      )
    );
  }
}