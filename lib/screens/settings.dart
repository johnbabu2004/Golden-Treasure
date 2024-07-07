
import 'package:flutter/material.dart';
import 'package:myapp/screens/drawer.dart';
import 'package:myapp/widgets/app_bar.dart';
class SettingsPage extends StatelessWidget {
   SettingsPage({Key? key}) : super(key: key);
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     key:_scaffoldKey,
     appBar: MyAppBar(title: "Settings Page", scaffoldKey: _scaffoldKey),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Theme'),
            trailing: DropdownButton<ThemeMode>(
              value: ThemeMode.system,
              onChanged: (value) {
                // Update the theme mode here.
              },
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text('System'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text('Light'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text('Dark'),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Language'),
            trailing: DropdownButton<Locale>(
              value: Locale('en'),
              onChanged: (value) {
                // Update the locale here.
              },
              items: const [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('es'),
                  child: Text('Spanish'),
                ),
                DropdownMenuItem(
                  value: Locale('fr'),
                  child: Text('French'),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
