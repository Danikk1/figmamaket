import 'package:flutter/material.dart';

class Simple2 extends StatelessWidget {
  const Simple2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------- APP BAR WITH BACK ----------
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Simple 2",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 10),

            // --- HEADER ---
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 14),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Good Evening!",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7B7B7B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Dan Smith",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000B23),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                _circleIcon(Icons.search),
                const SizedBox(width: 10),
                _circleIcon(Icons.notifications_none),
              ],
            ),

            const SizedBox(height: 30),

            // --- WEEKLY TASKS ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "My Weekly Tasks",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF000B23),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.filter_list, color: Color(0xFF000B23)),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "18 Tasks Pending",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF7B7B7B),
              ),
            ),

            const SizedBox(height: 20),

            // --- WEEKLY CARDS ---
            Row(
              children: [
                Expanded(
                  child: _taskCard(
                    tag: "UI/UX Design",
                    tagColor: Colors.purple,
                    bgColor: Colors.purple.shade50,
                    title: "Create a Landing Page",
                    date: "Mon, 12 July 2022",
                    counter: 3,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _taskCard(
                    tag: "Development",
                    tagColor: Colors.orange,
                    bgColor: Colors.orange.shade50,
                    title: "Develop a Website",
                    date: "Mon, 30 July 2022",
                    counter: 2,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // --- TODAY’S TASKS ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Today’s Tasks",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF000B23),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.filter_list, color: Color(0xFF000B23)),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "18 Tasks Pending",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF7B7B7B),
              ),
            ),

            const SizedBox(height: 20),

            // --- TODAY CARDS ---
            _todayCard(
              title: "Design 2 App Screens",
              subtitle: "Crypto Wallet App",
              date: "Mon, 10 July 2022",
              done: true,
              people: 3,
            ),

            const SizedBox(height: 15),

            _todayCard(
              title: "Design Homepage",
              subtitle: "Water Company Website",
              date: "Mon, 10 July 2022",
              done: false,
              people: 2,
            ),

            const SizedBox(height: 40),

            // --- BOTTOM MENU ---
            _bottomMenu(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ---------------- ICON CIRCLE ----------------

Widget _circleIcon(IconData icon) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Color(0xFFE4E4E4)),
    ),
    child: Icon(icon, color: Color(0xFF7B7B7B)),
  );
}

// ---------------- WEEKLY CARD ----------------

Widget _taskCard({
  required String tag,
  required Color tagColor,
  required Color bgColor,
  required String title,
  required String date,
  required int counter,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(tag, style: TextStyle(fontSize: 12, color: tagColor)),
        ),

        const SizedBox(height: 12),

        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF000B23),
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 12),

        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.grey.shade300),
                Positioned(left: 18, child: CircleAvatar(radius: 14, backgroundColor: Colors.grey.shade400)),
                Positioned(left: 36, child: CircleAvatar(radius: 14, backgroundColor: Colors.orange)),
                Positioned(
                  left: 44,
                  top: 6,
                  child: Text(
                    "$counter+",
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 12),

        Row(
          children: [
            const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
            const SizedBox(width: 8),
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Color(0xFF7B7B7B)),
            ),
          ],
        ),
      ],
    ),
  );
}

// ---------------- TODAY CARD ----------------

Widget _todayCard({
  required String title,
  required String subtitle,
  required String date,
  required bool done,
  required int people,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
            color: done ? Colors.grey : Color(0xFF000B23),
            fontWeight: FontWeight.w600,
            decoration: done ? TextDecoration.lineThrough : null,
          ),
        ),
        const SizedBox(height: 6),

        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF7B7B7B),
          ),
        ),

        const SizedBox(height: 12),
        Divider(color: Colors.grey.shade300),
        const SizedBox(height: 12),

        // BOTTOM ROW
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.grey.shade300),
                Positioned(left: 18, child: CircleAvatar(radius: 14, backgroundColor: Colors.grey.shade400)),
                Positioned(left: 36, child: CircleAvatar(radius: 14, backgroundColor: Colors.orange)),
              ],
            ),

            const SizedBox(width: 12),

            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Color(0xFF7B7B7B)),
            ),

            const Spacer(),

            Icon(
              done ? Icons.check_circle : Icons.radio_button_unchecked,
              color: done ? Colors.blue : Colors.grey,
              size: 24,
            ),
          ],
        ),
      ],
    ),
  );
}

// ---------------- BOTTOM NAVIGATION ----------------

Widget _bottomMenu() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black12,
          offset: Offset(0, -5),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _MenuItem(Icons.home, "Home", active: true),
        _MenuItem(Icons.folder_open, "Projects"),
        _MenuItem(Icons.calendar_month, "Calendar"),
        _MenuItem(Icons.chat_bubble_outline, "Messages"),
        _MenuItem(Icons.people_outline, "Members"),
      ],
    ),
  );
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _MenuItem(this.icon, this.label, {this.active = false});

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF577BFF) : const Color(0xFFA7A7A7);

    return Column(
      children: [
        Icon(icon, color: color, size: 26),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: color)),
      ],
    );
  }
}
