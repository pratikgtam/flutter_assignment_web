import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_web_assignment/ui/custom_scaffold.dart';

// This is a stateful widget which will display a dad joke
// It will fetch the joke from official-joke-api.appspot.com
// It will display the setup of the joke
// It will display a button to reveal the punchline

class DadJoke extends StatefulWidget {
  const DadJoke({super.key});

  @override
  State<DadJoke> createState() => _DadJokeState();
}

class _DadJokeState extends State<DadJoke> {
  String setup = '';
  String punchline = '';
  bool revealPunchline = false;
  @override
  void initState() {
    _fetch();
    super.initState();
  }

// Dio is used to fetch the dad joke from official-joke-api.appspot.com
  void _fetch() {
    Dio()
        .get('https://official-joke-api.appspot.com/jokes/random')
        .then((value) {
      setState(() {
        setup = value.data['setup'];
        punchline = value.data['punchline'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dad Joke', style: TextStyle(fontSize: 30)),
            IconButton(
              onPressed: () {
                _fetch();
                setState(() {
                  revealPunchline = false;
                });
              },
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        const SizedBox(height: 50),
        Text(
          setup,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 50),
        if (revealPunchline)
          Text(
            punchline,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            setState(() {
              revealPunchline = !revealPunchline;
            });
          },
          child: Text(revealPunchline ? 'Hide answer' : 'Reveal answer'),
        ),
        const SizedBox(height: 50),
      ],
    ));
  }
}
