import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List<bool> _isCheckedList = [
    false,
    false,
    false,
    false,
    false
  ]; // Liste des états des cases

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Répondez à quelques questions pour être orienté',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Quelle est votre orientation sexuelle'),
          ),
          const SizedBox(
              height: 20), // Espacement entre le texte et les cases à cocher
          CheckboxListTile(
            value: _isCheckedList[0],
            onChanged: (bool? value) {
              setState(() {
                _isCheckedList[0] = value!;
              });
            },
            title: const Text('Hetero'),
          ),
          CheckboxListTile(
            value: _isCheckedList[1],
            onChanged: (bool? value) {
              setState(() {
                _isCheckedList[1] = value!;
              });
            },
            title: const Text('Homosexuelle'),
          ),
          CheckboxListTile(
            value: _isCheckedList[2],
            onChanged: (bool? value) {
              setState(() {
                _isCheckedList[2] = value!;
              });
            },
            title: const Text('Bisexuel(le)'),
          ),
          CheckboxListTile(
            value: _isCheckedList[3],
            onChanged: (bool? value) {
              setState(() {
                _isCheckedList[3] = value!;
              });
            },
            title: const Text('pansexuel(le)'),
          ),
          CheckboxListTile(
            value: _isCheckedList[4],
            onChanged: (bool? value) {
              setState(() {
                _isCheckedList[4] = value!;
              });
            },
            title: const Text('Asexuel(le)'),
          ),
        ],
      ),
    );
  }
}
