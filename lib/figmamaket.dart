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
      backgroundColor: const Color(0xFFF7F8FA),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Макеты из Figma",
          style: TextStyle(
            color: Color(0xFF09101D),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _menuCard(
              context,
              title: "Простой макет 1",
              icon: Icons.phone_android,
              color: Colors.blueAccent,
              page: const Simple1(),
            ),

            const SizedBox(height: 20),

            _menuCard(
              context,
              title: "Простой макет 2",
              icon: Icons.widgets,
              color: Colors.purple,
              page: const Simple2(),
            ),

            const SizedBox(height: 20),

            _menuCard(
              context,
              title: "Сложный макет 1",
              icon: Icons.auto_graph,
              color: Colors.orange,
              page: const Complex1(),
            ),

            const SizedBox(height: 20),

            _menuCard(
              context,
              title: "Сложный макет 2",
              icon: Icons.menu_book,
              color: Colors.green,
              page: const Complex2(),
            ),
          ],
        ),
      ),
    );
  }

  // -------------------------------------------------------
  // BEAUTIFUL MENU CARD
  // -------------------------------------------------------

  Widget _menuCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required Widget page,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => page),
      ),
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 6),
            )
          ],
        ),
        child: Row(
          children: [
            // Icon block
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, size: 32, color: color),
            ),

            const SizedBox(width: 20),

            // Title
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF09101D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
