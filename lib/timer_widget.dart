import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_bloc_app/bloc/bloc.dart';

class TimerWidget extends StatelessWidget {
  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<TimerBloc, TimerState>(
              builder: (context, state) {
                final String minuteStr = ((state.duration / 60) % 60)
                    .floor()
                    .toString()
                    .padLeft(2, '0');
                final String secondsStr =
                    (state.duration % 60).floor().toString().padLeft(2, '0');
                return Text('$minuteStr:$secondsStr');
              },
            ),
          )
        ],
      ),
    );
  }
}
