// import 'package:flutter/material.dart';
//
// class StatsScreen extends StatefulWidget {
//   const StatsScreen({super.key});
//
//   AppState createState() => AppState();
// }
//
// class AppState extends State<StatsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stats Screen'),
//         backgroundColor: Colors.teal,
//       ),
//       backgroundColor: Colors.teal[50], // Light teal background
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // New Match Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       //Navigator.pushNamed(context, '/newMatch');
//                     },
//                     icon: const Icon(Icons.group),
//                     label: const Text(
//                       'Team Stats',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               // Resume Match Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       //Navigator.pushNamed(context, '/scorecard');
//                     },
//                     icon: const Icon(Icons.sports_cricket),
//                     label: const Text(
//                       'Batsman States',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               // History Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       //Navigator.pushNamed(context, '/history');
//                     },
//                     icon: const Icon(Icons.sports_baseball),
//                     label: const Text(
//                       'Bowler Stats',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               // Stats Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: const Icon(Icons.bar_chart),
//                     label: const Text(
//                       'Stats',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
// }
