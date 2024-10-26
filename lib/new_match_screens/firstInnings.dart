import 'package:flutter/material.dart';

class FirstInnings extends StatefulWidget {
  const FirstInnings({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<FirstInnings> {
  final List<Map<String, dynamic>> _battingData = [
    {
      'Batsman': 'Zohaib',
      'R': 36,
      'B': 17,
      '6s': 2,
      '4s': 5,
      'Os': 3,
      'SR': '00'
    },
    {
      'Batsman': 'Muzafar',
      'R': 46,
      'B': 27,
      '6s': 2,
      '4s': 2,
      'Os': 6,
      'SR': '00'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this card for batsman summary
              Card(
                child: Column(
                  children: [
                    const Card(
                      color: Colors.teal,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '::',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Batsman',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('R',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('B',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('6s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('4s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('0s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('SR',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _battingData.length,
                          itemBuilder: (context, index) {
                            final battingData = _battingData[index];
                            return Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text((index + 1).toString()),
                                  Text(battingData['Batsman']),
                                  Text(battingData['Batsman']),
                                  Text(battingData['R'].toString()),
                                  Text(battingData['B'].toString()),
                                  Text(battingData['6s'].toString()),
                                  Text(battingData['4s'].toString()),
                                  Text(battingData['Os'].toString()),
                                  Text(battingData['SR'].toString()),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              //this card for bowler summary
              Card(
                child: Column(
                  children: [
                    Card(
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Colors.teal,
                          )),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Bowler',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('R',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('O',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('W',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('E',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('M',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('SR',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Batsman'),
                                  Text('R'),
                                  Text('B'),
                                  Text('6s'),
                                  Text('4s'),
                                  Text('0s'),
                                  Text('SR'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              // this card for over summary
              Card(
                child: Column(
                  children: [
                    const Card(
                      color: Colors.teal,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Batsman'),
                            Text('R'),
                            Text('B'),
                            Text('6s'),
                            Text('4s'),
                            Text('0s'),
                            Text('SR'),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Batsman'),
                                  Text('R'),
                                  Text('B'),
                                  Text('6s'),
                                  Text('4s'),
                                  Text('0s'),
                                  Text('SR'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
