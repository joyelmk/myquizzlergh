import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 218, 218),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorkeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
        Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Choose True or False....',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  scorkeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  scorkeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Row(
          children: scorkeeper,
        )
      ],
    );
  }
}
