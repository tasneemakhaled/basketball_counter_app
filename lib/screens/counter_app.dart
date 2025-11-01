import 'package:basketball_counter_app/cubits/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatelessWidget {
  CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Points Counter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
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
                            '${BlocProvider.of<CounterCubit>(context).counterA}',
                            style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomButton(
                            text: 'Add 1 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('A', 1);
                            },
                          ),
                          CustomButton(
                            text: 'Add 2 Points',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('A', 2);
                            },
                          ),
                          CustomButton(
                            text: 'Add 3 Points',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('A', 3);
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
                            '${BlocProvider.of<CounterCubit>(context).counterB}',
                            style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomButton(
                            text: 'Add 1 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('B', 1);
                            },
                          ),
                          CustomButton(
                            text: 'Add 2 Points',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('B', 2);
                            },
                          ),
                          CustomButton(
                            text: 'Add 3 Points',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment('B', 3);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomButton(
                    text: 'Reset',
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).counterA = 0;
                      BlocProvider.of<CounterCubit>(context).counterB = 0;
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
