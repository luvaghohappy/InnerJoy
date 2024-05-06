import 'package:flutter/material.dart';

class Mymainpage extends StatefulWidget {
  const Mymainpage({Key? key}) : super(key: key);

  @override
  State<Mymainpage> createState() => _MymainpageState();
}

class _MymainpageState extends State<Mymainpage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  const Text(
                    'INNERJOY',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 140),
                  ),
                  IconButton(
                    iconSize: 23,
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  IconButton(
                    iconSize: 23,
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  height: 40,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text('Partagez avec vos amis'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_album_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
