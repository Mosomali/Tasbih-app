import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: const [
          // Profile Header
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("image/mo1.jpg"),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MoSomali',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Yesterday I was clever so I...',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),

          // account listka 
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Account'),
            subtitle: Text('Security notifications, change number'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Block contacts, disappearing messages'),
            
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('English (device\'s language)'),
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Avatar'),
            subtitle: Text('Create, edit, profile photo'),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chats'),
            subtitle: Text('Theme, wallpapers, chat history'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Message, group & call tones'),
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Storage and data'),
            subtitle: Text('Network usage, auto-download'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('App language'),
            subtitle: Text('English (device\'s language)'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            subtitle: Text('Help centre, contact us, privacy policy'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('Log out from the app'),
          ), 
          ListTile(
            leading : Icon(Icons.report),
            title: Text('Report a bug'),
            subtitle: Text('Tell us about any issues or bugs'),
          ),
           ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            subtitle: Text('App version, legal information'),
           )
        ],
      ),
    );
  }
}