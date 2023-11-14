import 'package:block/cubit/counter_cubit.dart';
import 'package:block/cubit/counter_state.dart';
import 'package:block/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );
  }
}
