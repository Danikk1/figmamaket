import 'package:flutter/material.dart';

class Simple2 extends StatelessWidget {
  const Simple2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple 2")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(
            4,
            (_) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
