import 'package:flutter/material.dart';

class Simple1 extends StatelessWidget {
  const Simple1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------- TOP BAR WITH BACK ----------
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Simple 1",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 10),

            Container(
              height: 230,
              decoration: BoxDecoration(
                color: const Color(0xFFF2C94C),
                borderRadius: BorderRadius.circular(18),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Peter Mach",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),

            const SizedBox(height: 5),

            const Text(
              "Mind Deep Relax",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF1E1E1E),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Join the Community as we prepare over 33 days to relax and "
              "feel joy with the mind and happiness session across the World.",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF1E1E1E),
                height: 1.4,
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 40,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF039EA2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.play_arrow, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Play Next Session",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            _buildSessionCard(
              color: const Color(0xFF2F80ED),
              title: "Sweet Memories",
              subtitle: "December 29 Pre-Launch",
            ),
            _buildSessionCard(
              color: const Color(0xFF039EA2),
              title: "A Day Dream",
              subtitle: "December 29 Pre-Launch",
            ),
            _buildSessionCard(
              color: const Color(0xFFF09235),
              title: "Mind Explore",
              subtitle: "December 29 Pre-Launch",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionCard({
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEBEBEB)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 17)),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.black45),
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz, color: Color(0xFFD9D9D9))
        ],
      ),
    );
  }
}
