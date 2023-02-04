import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MoodyGradient());
  }
}

class MoodyGradient extends StatelessWidget {
  const MoodyGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromARGB(255, 203, 201, 205),
              Color.fromARGB(255, 134, 161, 193),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: FlutterLogo(),
      ),
    );
  }
}
