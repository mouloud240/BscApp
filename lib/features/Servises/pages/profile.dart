import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  final String id;

  ProfilePage({
    required this.username,
    required this.id,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Map<String, String> infoRoutes = {
    'Name': '/name',
    'Email': '/email',
    'ID card Number': '/id_card_number',
    'Phone Number': '/phone_number',
    'Date of birth': '/date_of_birth',
  };
  late int _current;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _current = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 71, bottom: 51),
              child: Column(
                children: [
                  Text(
                    widget.username,
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                  Text(
                    widget.id,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 27),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: infoRoutes.length,
                itemBuilder: (context, index) {
                  String key = infoRoutes.keys.elementAt(index);
                  return ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text(key),
                    onTap: () {
                      Navigator.pushNamed(context, infoRoutes[key]!);
                    },
                  );
                },
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
