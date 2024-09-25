import 'package:flutter/material.dart';

class ScoreboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scoreboard: hhhkkj vs hhh'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Scorecard section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'hhhkkj, Inning1, (2 overs)',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0/0',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '(0.0)',
                          style: TextStyle(fontSize: 32, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CRR: 0.00'),
                        Text('RRR: NA'),
                        Text('Target: NA'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),

            // Batsman and Bowler table
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: Column(
                children: [
                  Table(
                    border: TableBorder.all(color: Colors.grey),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Batsman', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('R'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('B'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('4s'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('6s'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SR'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('hhh*'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0.00'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Table(
                    border: TableBorder.all(color: Colors.grey),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Bowler', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('O'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('M'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('R'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('W'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('ER'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('ijij'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0.0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0.00'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),

            // Checkbox and Button Grid
            Text('This over:'),
            Wrap(
              spacing: 10.0,
              children: [
                CheckboxWidget(label: 'Wicket'),
                CheckboxWidget(label: 'Wide'),
                CheckboxWidget(label: 'No Ball'),
                CheckboxWidget(label: 'Byes'),
                CheckboxWidget(label: 'Leg Byes'),
              ],
            ),
            SizedBox(height: 8),
            // Number Pad for scoring
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: [
                ScoreButton(label: '0'),
                ScoreButton(label: '1'),
                ScoreButton(label: '2'),
                ScoreButton(label: 'SWAP'),
                ScoreButton(label: '3'),
                ScoreButton(label: '4'),
                ScoreButton(label: '6'),
                ScoreButton(label: 'UNDO'),
              ],
            ),
            SizedBox(height: 8),
            // Bottom buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomButton(label: 'OVERS'),
                BottomButton(label: 'BATSMAN'),
                BottomButton(label: 'BOWLER'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatelessWidget {
  final String label;

  CheckboxWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(value: false, onChanged: (bool? value) {}),
        Text(label),
      ],
    );
  }
}

class ScoreButton extends StatelessWidget {
  final String label;

  ScoreButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
    );
  }
}

class BottomButton extends StatelessWidget {
  final String label;

  BottomButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Green color as shown in the image
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
