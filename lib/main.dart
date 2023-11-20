import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}




// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   String actionLabel = 'Belum ada aksi';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('interaction'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   actionLabel = 'Pengguna melakukan Tap';
//                 });
//               },
//               onDoubleTap: () {
//                 setState(() {
//                   actionLabel = 'Pengguna melakukan Double Tap';
//                 });
//               },
//               onLongPress: () {
//                 setState(() {
//                   actionLabel = 'Pengguna melakukan Long Press';
//                 });
//               },
//               child: Container(
//                 height: 50,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Aksi',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               actionLabel,
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
