import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NetNinjaCard(),
  ));
}
class NetNinjaCard extends StatefulWidget {
  const NetNinjaCard({Key? key}) : super(key: key);

  @override
  State<NetNinjaCard> createState() => _NetNinjaCardState();
}

class _NetNinjaCardState extends State<NetNinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Net Ninja ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage:  AssetImage('assets/lion.png'),
                radius: 40,
              ),
            ),
            const Divider(
              color: Colors.amberAccent,
              height: 60.0,
            ),
            const Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'JEAN LIONEL',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text('NIVEAU ACTUEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(Icons.email,
                   color: Colors.grey[400],
                ),
                const SizedBox(width: 20.0),
                Text('nijeanlionel@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

