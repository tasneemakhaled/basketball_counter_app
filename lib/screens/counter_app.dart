import 'package:basketball_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counterA = 0;

  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Points Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$counterA',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomButton(
                      text: 'Add 1 Point',
                      onPressed: () {
                        counterA++;
                        setState(() {});
                      },
                    ),
                    CustomButton(
                      text: 'Add 2 Points',
                      onPressed: () {
                        counterA += 2;
                        setState(() {});
                      },
                    ),
                    CustomButton(
                      text: 'Add 3 Points',
                      onPressed: () {
                        counterA += 3;
                        setState(() {});
                      },
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$counterB',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomButton(
                      text: 'Add 1 Point',
                      onPressed: () {
                        counterB++;
                        setState(() {});
                      },
                    ),
                    CustomButton(
                      text: 'Add 2 Points',
                      onPressed: () {
                        counterB += 2;
                        setState(() {});
                      },
                    ),
                    CustomButton(
                      text: 'Add 3 Points',
                      onPressed: () {
                        counterB += 3;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
            CustomButton(
              text: 'Reset',
              onPressed: () {
                counterA = 0;
                counterB = 0;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
