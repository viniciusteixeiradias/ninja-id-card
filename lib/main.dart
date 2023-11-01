import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  void increaseLevel() {
    setState(() {
      ninjaLevel++;
    });
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: increaseLevel,
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/one-piece.jpeg'),
                radius: 40,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.grey
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
              )
            ),
            const SizedBox(height: 10),
            const Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 30),
            const Text(
              'Currenct Ninja Level',
              style: TextStyle(
                color: Colors.grey,
              )
            ),
            const SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 30),
            const Row(
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
