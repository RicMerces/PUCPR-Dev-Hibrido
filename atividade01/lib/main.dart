import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ric - Atividade 01 da PUCPR',
      home: MyHomePage(title: 'Atividade 01 da PUCPR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ListView.builder(
              itemCount: 23,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
            )
          ],
        ));
  }
}
