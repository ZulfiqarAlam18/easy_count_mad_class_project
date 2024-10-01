import 'package:flutter/material.dart';

class ScoreboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scoreboard: Team1 vs Team2'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Scorecard section
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 4.0,
                  )
                ),
                elevation: 16,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Team1, Inning1, (2 overs)',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '0/0',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(0.0)',
                            style: TextStyle(fontSize: 36, color: Colors.grey[600]),
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
              SizedBox(height: 4),
              // Batsman and Bowler table
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 4.0,
                  )
                ),
                elevation: 16,
                child: Column(
                  children: [
                    Table(
                      border: TableBorder.all(color: Colors.teal),
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
                        // First batsman row
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Player1*'),
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
                        // Second batsman row
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Player2'),
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
                      border: TableBorder.all(color: Colors.teal),
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
                              child: Text('Bowler1'),
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
              SizedBox(height: 4),

              //current over update card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 4.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('This Over : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text('0 0 0 0 0 0 0',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),

              // wicket, wide, byes, no ball legbyes buttons
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 4.0,
                  )
                ),
                elevation: 8,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        // Define a uniform button size
                       // const Size buttonSize = Size(70, 50); // Adjust as needed
        
                    ElevatedButton(
                    onPressed: () {
                     showDialog(context: context, builder: (BuildContext context){
                       return AlertDialog(
                         backgroundColor: Colors.teal[50],
                         title: const Text('Select Wicket Type'),
                         content: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Container(
                             height: 400,
                             width:   200,
                             child: Padding(
                               padding: EdgeInsets.all(8.0),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Clean Bowled'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Catch Out'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Stump Out'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('LBW'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Run Out'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Hit Wicket'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},child: const Text('Retire hurt'),style: ElevatedButton.styleFrom(
                                       minimumSize: Size(150, 15),
                                     ),),
                                   ),
                                 ],
                               ),
                             ),)
                           ),
                         ),
                       );
                     });
                    },
                child: const Text('Wicket'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('No Ball'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Wide'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Byes'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Leg Byes'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
            ),
              SizedBox(height: 4),
        
              // Score Buttons Grid
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2,  // Adjusted height of buttons
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
              SizedBox(height: 4),
        
              // Live Match Summary
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 4.0,
                  )
                ),
                elevation: 8,
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/summaryScreen');

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
                        'This Match Summary',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;

  ActionButton({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(70, 50), // Adjusted height for better look
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}

class ScoreButton extends StatelessWidget {
  final String label;

  ScoreButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(70, 50), // Adjusted height for better look
      ),
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
        minimumSize: Size(100, 50), // Adjusted height for better look
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
