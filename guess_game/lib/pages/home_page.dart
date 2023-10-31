import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'right_page.dart';
import 'wrong_page.dart';
import 'game_over.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _secretNumber = 8;
  int _guessesRemaining = 3;
  TextEditingController _textEditingController = TextEditingController();

  void _checkGuess(int guess) {
    if (guess == _secretNumber) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RightGuessPage(correctNumber: _secretNumber),
        ),
      );
    } else {
      setState(() {
        _guessesRemaining--;
      });

      if (_guessesRemaining <= 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => GameOverPage(secretNumber: _secretNumber),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WrongGuessPage(),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/guess.png',
                  width: 250,
                  height: 250,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'I have a secret number in my mind (1 - 10).\nYou have $_guessesRemaining chances to guess it. Can you guess it?',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 28),
              Text(
                '$_guessesRemaining of 3 chances are taken',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: _textEditingController,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '$_guessesRemaining/3',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  int guess = int.tryParse(_textEditingController.text) ?? 0;
                  if (guess > 0 && guess <= 10) {
                    _checkGuess(guess);
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}