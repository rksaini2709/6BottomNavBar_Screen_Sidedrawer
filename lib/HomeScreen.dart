import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Terms & Policies",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildCard(
              title: "Terms and Conditions",
              content:
              "Deliver responsibly, follow guidelines, and respect timelines.",
              icon: Icons.rule,
              backgroundColor: Colors.orange.shade100,
              iconColor: Colors.deepOrange,
            ),
            buildCard(
              title: "Privacy Policy",
              content:
              "We value your privacy and ensure your data is protected.",
              icon: Icons.lock,
              backgroundColor: Colors.purple.shade100,
              iconColor: Colors.deepPurple,
            ),
            buildCard(
              title: "User Agreement",
              content:
              "Professionalism and mutual respect is a part of our agreement.",
              icon: Icons.group,
              backgroundColor: Colors.teal.shade100,
              iconColor: Colors.teal,
            ),
            buildCard(
              title: "Refund Policy",
              content:
              "Refunds are processed based on applicable guidelines.",
              icon: Icons.money,
              backgroundColor: Colors.green.shade100,
              iconColor: Colors.green,
            ),
            buildCard(
              title: "Support Policy",
              content:
              "Reach out to us for help, and we’ll respond promptly.",
              icon: Icons.support_agent,
              backgroundColor: Colors.blue.shade100,
              iconColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required String content,
    required IconData icon,
    required Color backgroundColor,
    required Color iconColor,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: iconColor.withOpacity(0.2),
              child: Icon(icon, size: 28, color: iconColor),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}