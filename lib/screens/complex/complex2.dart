import 'package:flutter/material.dart';

class Complex2 extends StatelessWidget {
  const Complex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("3D Design Basic")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Circlo Resto",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileStat("Followers", "2.368"),
              ProfileStat("Following", "346"),
              ProfileStat("Events", "13"),
            ],
          ),

          const SizedBox(height: 25),

          Row(
            children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Follow"),
              )),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Messages"),
              )),
          ]),

          const SizedBox(height: 30),

          const Text("About",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit..."),

          const SizedBox(height: 30),

          _eventCard("Vegan Special", "\$11", "20 hours", "24 Lessons"),
          _eventCard("Mixed Pasta", "\$13", "20 mins", "\$12.99"),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16)),
            child: const Text("Enroll - \$24.99"),
          )
        ],
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String title;
  final String value;

  const ProfileStat(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
        Text(title, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}

Widget _eventCard(
    String title, String price, String hours, String lessons) {
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
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(18)),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(hours),
              Text(lessons),
            ],
          ),
        ),
        Text(price,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
