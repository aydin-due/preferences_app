import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
   
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routeName = 'Settings';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Settings', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
            Divider(),
            SwitchListTile.adaptive(
              title: const Text('Dark Mode'),
              value: true, 
              onChanged: (value){}),
            Divider(),
            RadioListTile<int>(
              title: Text('Masculino'),
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
            Divider(),
            RadioListTile<int>(
              title: Text('Masculino'),
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                initialValue: 'Aydin',
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario'
                ),
                onChanged: (value) {},
              ),
            ),
          ]),),
      )
    );
  }
}