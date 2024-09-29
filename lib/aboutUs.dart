import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<AboutUsScreen> {
  final String num1 = '03149807774';
  final String num2 = '03053079686';
  final String mail = 'zulfiqaralam651@gmail.com';

  // Method to launch URLs for social handles (new Uri format)
  Future<void> _urlLauncher(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);  // Using new launchUrl method
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 320,  // Consistent width for all cards
          padding: const EdgeInsets.symmetric(vertical: 16),
          color: Colors.teal[50],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCard('About Us', 24),
              const SizedBox(height: 10),
              _buildCard(
                'App Developed by: Zulfiqar Alam and Ali Raza',
                16,
              ),
              const SizedBox(height: 10),
              _buildCard('Follow Us', 24),
              const SizedBox(height: 20),
              _buildSocialRow(),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for building cards
  Widget _buildCard(String text, double fontSize) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Colors.teal,
          width: 2.0,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.teal[700],
          ),
        ),
      ),
    );
  }

  // Social icons row
  Widget _buildSocialRow() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Colors.teal,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Facebook Icon
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.facebook.com/yourFacebookProfile');
              },
              icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.teal),
            ),
            // LinkedIn Icon
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.linkedin.com/in/yourLinkedInProfile');
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.teal),
            ),
            // GitHub Icon
            IconButton(
              onPressed: () {
                _urlLauncher('https://github.com/ZulfiqarAlam18');
              },
              icon: const FaIcon(FontAwesomeIcons.github, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
