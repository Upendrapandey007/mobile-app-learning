import 'package:flutter/material.dart';

import '../widgets/dashboard_cards.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        children: const [
          SectionHeader(
            title: 'Learner Profile',
            subtitle: 'Track your plan, achievements, and learning preferences.',
          ),
          SizedBox(height: 14),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(radius: 22, child: Icon(Icons.person_outline)),
              title: Text('IELTS Learner'),
              subtitle: Text('Target Band: 7.0'),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              title: Text('Plan'),
              subtitle: Text('Free plan with limited speaking evaluations'),
              trailing: Icon(Icons.workspace_premium_outlined),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              title: Text('Upgrade to Premium'),
              subtitle: Text('Unlock unlimited speaking feedback and full mock tests'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
