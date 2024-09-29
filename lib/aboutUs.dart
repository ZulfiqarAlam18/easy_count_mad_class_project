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

  // Method to launch URLs for social handles
  Future<void> _urlLauncher(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
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
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 340,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeaderCard('About Us', 24),
              const SizedBox(height: 20),
              _buildDescriptionCard(
                  'App Developed by: Zulfiqar Alam and Ali Raza', 16),
              const SizedBox(height: 20),
              _buildHeaderCard('Follow Us', 24),
              const SizedBox(height: 20),
              _buildSocialRow(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Card with Bold Title
  Widget _buildHeaderCard(String text, double fontSize) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.teal, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.teal[800],
            ),
          ),
        ),
      ),
    );
  }

  // Description Card with smaller text
  Widget _buildDescriptionCard(String text, double fontSize) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.teal, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }

  // Social icons row
  Widget _buildSocialRow() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.teal, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.facebook.com/yourFacebookProfile');
              },
              icon: const FaIcon(FontAwesomeIcons.facebook,
                  color: Colors.teal, size: 30),
            ),
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.linkedin.com/in/yourLinkedInProfile');
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin,
                  color: Colors.teal, size: 30),
            ),
            IconButton(
              onPressed: () {
                _urlLauncher('https://github.com/ZulfiqarAlam18');
              },
              icon: const FaIcon(FontAwesomeIcons.github,
                  color: Colors.teal, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
