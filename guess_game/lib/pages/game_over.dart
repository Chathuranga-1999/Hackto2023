import 'package:flutter/material.dart';

class GameOverPage extends StatelessWidget {
  final int secretNumber;

  const GameOverPage({super.key, required this.secretNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      backgroundColor: Color.fromARGB(255,187,222,251),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Sorry Game Over. My Secret Number Is',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 20), 
                Text(
                  '$secretNumber',
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 45),
              ),
              child: const Text(
                'Start the Game Again',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}