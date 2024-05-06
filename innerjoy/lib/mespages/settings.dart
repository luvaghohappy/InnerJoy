import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String pseudo = '';
  String profil = '';

 @override
void initState() {
  super.initState();
  // Fetch user profile when the page is initialized
  fetchUserProfile();
}

Future<void> fetchUserProfile() async {
  var response = await http.get(
    Uri.parse('http://192.168.43.148:81/mentalHeal/selectUser.php'),
  );
  if (response.statusCode == 200) {
    // Analyser la réponse JSON
    var data = json.decode(response.body);
    setState(() {
      pseudo = data['pseudo'];
      profil = data['profil'];
    });
  } else {
    throw Exception('Failed to load profile');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            const Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            // Afficher le pseudo et le profil de l'utilisateur
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Text(
                  profil,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              title: Text('Pseudo: $pseudo'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            const Text('Groupes Integrer'),
            const ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(''),
              ),
              title: Text('Anxiete'),
              trailing: CircleAvatar(
                radius: 10,
                child: Text(
                  '10',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(''),
              ),
              title: Text('Anxiete'),
              trailing: CircleAvatar(
                radius: 10,
                child: Text(
                  '10',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(''),
              ),
              title: Text('Anxiete'),
              trailing: CircleAvatar(
                radius: 10,
                child: Text(
                  '10',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            const Divider(
              color: Colors.black12,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Supprimer un groupe'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Ajouter un groupe'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            const Divider(
              color: Colors.black12,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 13,
                child: Center(
                  child: IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: const Icon(Icons.security_outlined),
                  ),
                ),
              ),
              title: const Text('Sécurité'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 13,
                child: Center(
                  child: IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: const Icon(Icons.edit_attributes),
                  ),
                ),
              ),
              title: const Text('Modifier le compte'),
            ),
          ],
        ),
      ),
    );
  }
}
