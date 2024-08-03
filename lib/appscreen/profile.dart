import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
    
    body:
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          _buildProfileInfo(Icons.person, 'Kopal Srivastava'),
          const SizedBox(height: 10,),
          const Divider(height: 10,),
          const SizedBox(height: 10,),
          _buildProfileInfo(Icons.email, 'kopal.r.srivastava@adityabirla.com'),
          const SizedBox(height: 10,),
          const Divider(height: 10,),
          const SizedBox(height: 10,),
          _buildProfileInfo(Icons.phone, '8335609749'),
          const SizedBox(height: 10,),
          const Divider(height: 10,),
          const SizedBox(height: 10,),
          _buildProfileInfo(Icons.home, 'Common'),
          const SizedBox(height: 10,),
          const Divider(height: 10,),
          const SizedBox(height: 10,),
          _buildProfileInfo(Icons.lock, '....'),

          const SizedBox(height: 40),
           ElevatedButton.icon(
              onPressed: () {
                // Handle update button press
              },
              icon: const Icon(Icons.save),
              label: const Text('Update', style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 4, 45, 78),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(height: 30,),
            const SizedBox(height: 30,),
            OutlinedButton.icon(
              onPressed: () {
                // Handle sign out button press
              },
              icon: const Icon(Icons.exit_to_app, color: Colors.white),
              label: const Text('Sign Out', style: TextStyle(color: Colors.white),),
              style: OutlinedButton.styleFrom(
                
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),   
      );
  }
}

Widget _buildProfileInfo(IconData icon, String text) {
  return Row(
    children: <Widget>[
      Icon(icon, size: 30),
      const SizedBox(width: 10),
      Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    ],
  );
}
