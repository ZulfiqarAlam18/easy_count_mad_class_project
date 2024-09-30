import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<ContactUsScreen> {
  final String num1 = '03149807774';
  final String num2 = '03053079686';
  final String mail = 'zulfiqaralam651@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Colors.teal,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildContactInfo(
                    icon: Icons.phone,
                    label: 'Phone 1',
                    contact: num1,
                    context: context,
                  ),
                  const SizedBox(height: 16),
                  _buildContactInfo(
                    icon: Icons.phone,
                    label: 'Phone 2',
                    contact: num2,
                    context: context,
                  ),
                  const SizedBox(height: 16),
                  _buildContactInfo(
                    icon: Icons.email,
                    label: 'Email',
                    contact: mail,
                    context: context,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build contact rows with copy functionality
  Widget _buildContactInfo({
    required IconData icon,
    required String label,
    required String contact,
    required BuildContext context,
  }) {
    return Row(
      children: [
        Icon(icon, color: Colors.teal, size: 28),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.teal[700],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                contact,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: contact));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Data copied successfully')),
            );
          },
          icon: const Icon(Icons.copy, color: Colors.grey),
        ),
      ],
    );
  }
}
