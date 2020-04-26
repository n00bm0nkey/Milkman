// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  bool _isVisible = true;

  String _title = "Navigation Example";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Home'
          )
      ),
      drawer: startDrawer(),
      body: Center(
          child: Column(
          children: <Widget>[

          ],
          ),
      ),
    );
  }

  ///
  /// left side drawer using [DrawerHeader]
  ///
  Widget startDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                FlutterLogo(
                  size: 48.0,
                ),
                Text(
                  "Customer Name",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "name@email.com",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            decoration: BoxDecoration(color: Colors.yellow),
          ),
          createDrawerListTiles(Icons.settings, "General Settings", "customer_settings", null),
          Divider(),
          createDrawerListTiles(Icons.history, "Orders History", "customer_order_history", null),
          Divider(),
          createDrawerListTiles(Icons.person_outline, "Logout", '', null),
          createDrawerListTiles(Icons.delete_forever, "Delete Account", '', Colors.red),
        ],
      ),
    );
  }

  ///
  /// Account list tile
  ///
  Widget createDrawerAccountListTiles() {
    return ListTile(
      leading: CircleAvatar(
        child: FlutterLogo(),
      ),
      title: Text(
        "flutterexample@gmail.com",
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }

  ///
  /// Drawer container list tiles
  /// [IconData]
  ///
  Widget createDrawerListTiles(IconData icon, String title, String route, Color textColor) { //TODO: route being passed into widget (does this imply security concern?)
    bool colorExists = false;

    if (textColor != null){
      setState(() {
        colorExists = true;
      });
    }

    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          color: colorExists ? textColor : Colors.black,
        ),
      ),
      onTap: () {
        setState(() {
          print('NavBar: $route');
          Navigator.pushReplacementNamed(context, '/$route');
        });
      },
    );
  }

  ///
  /// creates the circular avatar for the header
  /// [CircleAvatar]
  ///
  Widget circularAvatars() {
    return CircleAvatar(
      child: FlutterLogo(),
    );
  }
}