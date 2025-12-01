import 'package:flutter/material.dart';

class Complex2 extends StatelessWidget {
  const Complex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------- APP BAR ----------
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "3D Design Basic",
          style: TextStyle(
            fontSize: 26,
            color: Color(0xFF09101D),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // ---------- BODY ----------
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // ---------- PREVIEW ----------
          Container(
            height: 220,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.school,
              size: 60,
              color: Colors.black54,
            ),
          ),

          const SizedBox(height: 20),

          // ---------- STATS ----------
          Row(
            children: [
              _statIcon(Icons.star, "4.569"),
              const SizedBox(width: 14),
              _statIcon(Icons.favorite, "4.9"),
              const SizedBox(width: 14),
              _bestSellerTag(),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "In this course you will learn how to build a space to a 3-dimensional "
            "product. There are 24 premium learning videos for you.",
            style: TextStyle(fontSize: 16, height: 1.4),
          ),

          const SizedBox(height: 28),

          _sectionHeader("24 Lessons (20 hours)", "See all"),

          const SizedBox(height: 20),

          _lessonItem(
            title: "Introduction to 3D",
            duration: "20 mins",
          ),

          const SizedBox(height: 40),

          // ---------- ENROLL BUTTON ----------
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: const LinearGradient(
                colors: [Color(0xFF304FFE), Color(0xFF6D5FFD)],
              ),
            ),
            child: const Center(
              child: Text(
                "Enroll - \$24.99",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // ---------- HELPERS ----------

  Widget _statIcon(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0x19304FFE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF304FFE), size: 18),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF304FFE),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bestSellerTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: const LinearGradient(
          colors: [Color(0xFF304FFE), Color(0xFF6D5FFD)],
        ),
      ),
      child: const Text(
        "Best Seller",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _sectionHeader(String title, String action) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF2B394B),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          action,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF304FFE),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _lessonItem({
    required String title,
    required String duration,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF4F6F9)),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x145A6CEA),
            blurRadius: 40,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          // preview
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.photo, color: Colors.black54),
          ),

          const SizedBox(width: 20),

          // text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF09101D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  duration,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF394451),
                  ),
                ),
              ],
            ),
          ),

          // --- CHECKMARK EXACT LIKE FIGMA ---
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF304FFE),
                width: 2,
              ),
            ),
            child: const Icon(
              Icons.check,
              size: 18,
              color: Color(0xFF304FFE),
            ),
          ),
        ],
      ),
    );
  }
}
