// import 'dart:js';

import 'package:flutter/material.dart';

Drawer appDrawer() {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(225, 0, 173, 179),
          ),
          child: Text('Hey User! We are here to help you'),
        ),
        ListTile(
          title: const Text('Yoga Tips'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('E Sanjeevani Video Conferencing'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            // Navigator.pop();
          },
        ),
      ],
    ),
  );
}
