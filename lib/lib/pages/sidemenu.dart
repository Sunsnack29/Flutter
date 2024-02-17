import 'package:flutter/material.dart';
import 'admin.dart';
import 'feedback.dart';
// ignore: use_key_in_widget_constructors
class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FeedbackPage(),
      ),
    );
  },          ),
          ListTile(
            leading: const Icon(Icons.comment),
            title: const Text('เกี่ยวกับเรา'),
            onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminPage(),
                      ),
                    );            },
          )
        ],
      ),
    );
  }
}