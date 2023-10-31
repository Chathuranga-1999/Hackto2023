import 'package:flutter/material.dart';
import 'package:flutter_counter_app/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar
      (
        title:const Text("Second Page"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const Text("You are in the second page"),
            ElevatedButton(
              
              onPressed: ()
              {
                Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> const FirstPage()),
                   );
              },
              style: ElevatedButton.styleFrom
              (
                backgroundColor: Colors.deepPurpleAccent,
              ),
              
              child: const Text("Go to the first Page"),
            )
          ]
        ),
      )
    );
  }
}