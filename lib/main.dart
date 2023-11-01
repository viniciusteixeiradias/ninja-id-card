import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/one-piece.jpeg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
              )
            ),
            SizedBox(height: 10),
            Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30),
            Text(
              'Currenct Ninja Level',
              style: TextStyle(
                color: Colors.grey,
              )
            ),
            SizedBox(height: 10),
            Text(
              '10',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,

                ),
                SizedBox(width: 10),
                Text(
                  'chun.li@thenetninja.com.au',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
