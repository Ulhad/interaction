import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = 'Belum ada aksi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interaction'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // actionLabel = 'Pengguna Melakukan Tap';
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                });
              },
              onDoubleTap: () {
                setState(() {
                  // actionLabel = 'Pengguna Melakukan Double Tap';
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                });
              },
              onLongPress: () {
                setState(() {
                  actionLabel = 'Pengguna Melakukan Long Press';
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Aksi',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(actionLabel),
          ],
        ),
      ),
    );
  }
}

