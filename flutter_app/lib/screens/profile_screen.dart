import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CircleAvatar(radius: 30, child: Icon(Icons.person_outline)),
          SizedBox(height: 12),
          Center(child: Text('Learner Profile')),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              title: Text('Plan'),
              subtitle: Text('Free (upgrade to Premium for unlimited speaking feedback)'),
            ),
          ),
        ],
      ),
    );
  }
}
