import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/layout/observer.dart';
import 'package:luxury_snacks_app/moduls/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: false,
      ),
      home: const WelcomeScreen(),
    );
  }
}
