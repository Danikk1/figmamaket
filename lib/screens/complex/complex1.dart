import 'package:flutter/material.dart';

class Complex1 extends StatelessWidget {
  const Complex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Popular Menu")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text("This is the description area",
              style: TextStyle(color: Colors.black54)),

          const SizedBox(height: 20),

          _menuCard("Original Salad", "\$8", "Lovy Food"),
          _menuCard("Fresh Salad", "\$10", "Albert Flores"),

          const SizedBox(height: 30),
          const Text("Best Seller",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          const SizedBox(height: 20),
          _menuCard("Yummie Ice Cream", "\$6", "Cloudy Resto"),
        ],
      ),
    );
  }

  Widget _menuCard(String title, String price, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),
          Text(price,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
