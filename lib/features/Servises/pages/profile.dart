import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String id;
  final Map<String, String> infoRoutes = {
    'Name': '/name',
    'Email': '/email',
    'ID card Number': '/id_card_number',
    'Phone Number': '/phone_number',
    'Date of birth': '/date_of_birth',
  };

  ProfilePage({
    required this.username,
    required this.id,
  });

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
                    username,
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                  Text(
                    id,
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
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
              bottom: 20, left: 20, right: 20), // Add margin to the bottom
          height: 65, // Taller height for the bottom bar
          decoration: BoxDecoration(
            color:
                Colors.transparent, // Make the container background transparent
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              backgroundColor: Color(
                  0xFF1C1B45), // Dark background color for the BottomNavigationBar
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
