import 'package:flutter/material.dart';
import 'package:flutter_custom_buttons/flutter_custom_buttons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Buttons(
          width: 100.0,
          height: 60.0,
          radius: 12.0,
          elevation: 2.0,
          txt: "Button",
          textColor: Colors.white,
          fontSize: 20.0,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Button pressed"),
              ),
            );
          },
          background: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
