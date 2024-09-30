import 'package:flutter/material.dart';
import 'package:easy_count/home_screens/home_screen.dart';
class NewMatch extends StatefulWidget {
  const NewMatch({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<NewMatch> {
  // Variables to hold the selected radio button values
  String? tossWinner = 'Team 1'; // Default selection for Toss Winner
  String? choice = 'Bat'; // Default selection for batting/balling choice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Match Screen'),
      ),
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView( // Prevent overflow by making it scrollable
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
              children: [
                // Team 1 Name Field
                buildTextField('1st Team Name'),
                const SizedBox(height: 10),

                // Team 2 Name Field
                buildTextField('2nd Team Name'),
                const SizedBox(height: 10),

                // Number of Players Field
                buildTextField('Number of Players (1 to 12)'),
                const SizedBox(height: 10),

                // Number of Overs Field
                buildTextField('Number of Overs'),
                const SizedBox(height: 10),

                // Toss Winner Radio Buttons
                buildRadioButtonSection(
                  title: 'Toss won by',
                  options: ['Team 1', 'Team 2'],
                  selectedValue: tossWinner,
                  onChanged: (value) {
                    setState(() {
                      tossWinner = value;
                    });
                  },
                ),
                const SizedBox(height: 10),

                // Opted For Bat/Ball Radio Buttons
                buildRadioButtonSection(
                  title: 'Opted for',
                  options: ['Bat', 'Ball',],
                  selectedValue: choice,
                  onChanged: (value) {
                    setState(() {
                      choice = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Start Match Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      myAlertDB_with_textFields(context,'1st Innings');

                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.teal, // Background color teal
                      foregroundColor: Colors.white, // Text color white
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      'Start Match',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Method to build text fields with teal border
  Widget buildTextField(String labelText) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),
    );
  }

  // Method to build radio button sections
  Widget buildRadioButtonSection({
    required String title,
    required List<String> options,
    required String? selectedValue,
    required void Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: options.map((option) {
            return RadioListTile<String>(
              title: Text(
                option,
                style: const TextStyle(fontSize: 16),
              ),
              value: option,
              groupValue: selectedValue,
              activeColor: Colors.teal,
              onChanged: onChanged,
            );
          }).toList(),
        ),
      ],
    );
  }
}
