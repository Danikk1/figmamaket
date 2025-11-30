import 'package:flutter/material.dart';
import 'screens/simple/simple1.dart';
import 'screens/simple/simple2.dart';
import 'screens/complex/complex1.dart';
import 'screens/complex/complex2.dart';

void main() {
  runApp(const FigmaApp());
}

class FigmaApp extends StatelessWidget {
  const FigmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Макеты из Figma")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Простой макет 1"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Simple1()),
            ),
          ),
          ListTile(
            title: const Text("Простой макет 2"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Simple2()),
            ),
          ),
          ListTile(
            title: const Text("Сложный макет 1"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Complex1()),
            ),
          ),
          ListTile(
            title: const Text("Сложный макет 2"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Complex2()),
            ),
          ),
        ],
      ),
    );
  }
}
