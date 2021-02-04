import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_bloc_app/bloc/bloc.dart';
import 'package:flutter_timer_bloc_app/ticker.dart';
import 'package:flutter_timer_bloc_app/timer_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Timer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => TimerBloc(Ticker()),
          child: TimerWidget(),
        ));
  }
}
