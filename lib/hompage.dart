// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';

import 'profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> mypages = [
    const Text("Home"),
    const Text("products"),
    const Text("About"),
    const Text("Contact"),
  ];

  void _changeindex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App bar"),
      ),
      body: mypages[_selectedIndex],
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              accountName: Text("<NAME>"),
              accountEmail: Text("<EMAIL>"),
              currentAccountPicture: CircleAvatar(backgroundImage: null)),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
              // _changeindex(0);
            },
          ),
          ListTile(
            title: const Text("products"),
            onTap: () {
              // _changeindex(1);
            },
          ),
          ListTile(
            title: const Text("About"),
            onTap: () {
              // _changeindex(2);
            },
          ),
          ListTile(
            title: const Text("contact"),
            onTap: () {
              // _changeindex(3);
            },
          )
        ]),
      ),
    );
  }
}
