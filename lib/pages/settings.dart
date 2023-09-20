import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  buildlogout(),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey,
      );

  Widget buildlogout() => SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: Icon(
          Icons.exit_to_app,
          color: Colors.cyanAccent,
        ),
        onTap: () => SnackBar(content: Text('Logout')),
      );
}
