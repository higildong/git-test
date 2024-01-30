import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock Paper Scissors',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rock Paper Scissors'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Make your choice:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      playGame(0);
                    },
                    child: Image.asset(
                      'assets/images/rock.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      playGame(1);
                    },
                    child: Image.asset(
                      'assets/images/paper.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      playGame(2);
                    },
                    child: Image.asset(
                      'assets/images/scissors.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  result,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var random = Random();
var choices = ['rock', 'paper', 'scissors'];
var result = '';

void playGame(int userChoice) {
  var computerChoice = random.nextInt(3);
  var user = choices[userChoice];
  var computer = choices[computerChoice];

  if (user == computer) {
    result = 'It\'s a tie!';
  } else if (user == 'rock' && computer == 'scissors' ||
      user == 'paper' && computer == 'rock' ||
      user == 'scissors' && computer == 'paper') {
    result = 'You win!';
  } else {
    result = 'Computer wins!';
  }
}
