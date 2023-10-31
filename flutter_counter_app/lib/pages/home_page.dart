import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Head Count",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "$count",
          style: const TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count = count + 1;
            });
          },
          child: const Text("count"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
          child: const Text("Reset"),
        )
     
        
      ]),
    ));
  }
}
