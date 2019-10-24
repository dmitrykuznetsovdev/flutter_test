import 'package:flutter/material.dart';
import 'package:flutter_app/app/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_app/bloc/transition_logger.dart';
import 'package:flutter_app/bloc/counter.bloc.dart';
import 'package:flutter_app/bloc/dictionary.bloc.dart';

void main() {
  BlocSupervisor.delegate = TransitionLogger();
  final CounterBloc _counterBloc = CounterBloc();
  final DictionaryBloc _dictionaryBloc = DictionaryBloc();

  return runApp(MultiBlocProvider(providers: [
    BlocProvider<CounterBloc>(
      builder: (context) => _counterBloc,
    ),
    BlocProvider<DictionaryBloc>(
      builder: (context) => _dictionaryBloc,
    ),
  ], child: MyApp()));
}
