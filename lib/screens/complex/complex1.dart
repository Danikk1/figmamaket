import 'package:flutter/material.dart';

class Complex1 extends StatelessWidget {
  const Complex1({super.key});

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
          onPressed: () {
            Navigator.pop(context); // Вернуться в главное меню
          },
        ),

        centerTitle: true,
        title: const Text(
          "Popular Menu",
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
          // ---- Search Row ----
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6F9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search, color: Colors.black54, size: 20),
                      SizedBox(width: 10),
                      Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF09101D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Filter Button
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0x19F43F5E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.filter_list,
                  color: Color(0xFFF43F5E),
                ),
              ),
            ],
          ),

          const SizedBox(height: 32),

          // ---------- MENU ITEMS ----------
          _menuItem(
            title: "Original Salad",
            subtitle: "Lovy Food",
            price: "8",
          ),

          const SizedBox(height: 20),

          _menuItem(
            title: "Fresh Salad",
            subtitle: "Cloudy Resto",
            price: "10",
          ),

          const SizedBox(height: 20),

          _menuItem(
            title: "Yummie Ice Cream",
            subtitle: "Circlo Resto",
            price: "6",
          ),

          const SizedBox(height: 20),

          _menuItem(
            title: "Vegan Special",
            subtitle: "Haty Food",
            price: "11",
          ),

          const SizedBox(height: 20),

          _menuItem(
            title: "Mixed Pasta",
            subtitle: "Recto Food",
            price: "13",
          ),

          const SizedBox(height: 40),
        ],
      ),

      // ---------- BOTTOM BAR ----------
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFF4F6F9))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _bottomNavItem(Icons.home, "Home", active: true),
            _bottomNavItem(Icons.shopping_cart, "Order"),
            _bottomNavItem(Icons.chat_bubble_outline, "Chat"),
            _bottomNavItem(Icons.person_outline, "Profile"),
          ],
        ),
      ),
    );
  }

  // ---------- WIDGET: MENU ITEM ----------
  Widget _menuItem({
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x145A6CEA),
            blurRadius: 40,
            offset: Offset(8, 20),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image placeholder
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.fastfood, color: Colors.black54),
          ),

          const SizedBox(width: 16),

          // Title & subtitle
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
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF858B94),
                  ),
                ),
              ],
            ),
          ),

          // Price
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 26,
              color: Color(0xFFF43F5E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // ---------- WIDGET: BOTTOM NAV ITEM ----------
  Widget _bottomNavItem(IconData icon, String label, {bool active = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: active ? const Color(0xFFF43F5E) : Colors.black54,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: active ? const Color(0xFFF43F5E) : Colors.black54,
          ),
        )
      ],
    );
  }
}
