import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Road12Boys(),
  ));
}

class Road12Boys extends StatefulWidget {
  const Road12Boys({Key? key}) : super(key: key);

  @override
  State<Road12Boys> createState() => _Road12BoysState();
}

class _Road12BoysState extends State<Road12Boys> {

  int dootyNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Road 12 Boys ID'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dootyNumber += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.indigo,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage( 'assets/DiN (87).jpg'),
                radius: 70,
              ),
            ),
            const Divider(
              height: 100,
              color: Colors.indigo,
            ),
            const Text(
              'NAME:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Bob Stone',
              style: TextStyle(
                color: Colors.pink,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'DOOTY NUMBER:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$dootyNumber',
              style: const TextStyle(
                color: Colors.pink,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.lime,
                ),
                SizedBox(width: 7),
                Text(
                  'bobstone@niagara.imp.is',
                  style: TextStyle(
                    color: Colors.lime,
                    fontSize: 15,
                    letterSpacing: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




