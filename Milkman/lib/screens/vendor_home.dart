// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class VendorHome extends StatefulWidget {
  @override
  _VendorHomeState createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
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
      body: activeOrdersContainer('(Collection)'),
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
                  "Vendor Name",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "vendor@email.com",
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
          createDrawerListTiles(Icons.settings, "General Settings", "vendor_settings"),
          Divider(),
          createDrawerListTiles(Icons.store, "Order Settings", "vendor_order_settings"),
          createDrawerListTiles(Icons.show_chart, "Order History", "vendor_order_history"),
          createDrawerListTiles(Icons.shopping_cart, "Inventory", "vendor_inventory"),
          Divider(),
          createDrawerListTiles(Icons.directions_bike, "Switch to Delivery (TBA)", null),
          createDrawerListTiles(Icons.person_outline, "Logout", ''),
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
  Widget createDrawerListTiles(IconData icon, String title, String route) { //TODO: route being passed into widget (does this imply security concern?)
    // TODO: Consistency with function in customer home
    bool routeExists = false;

    if (route != null){
      setState(() {
        routeExists = true;
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
        ),
      ),
      onTap: () {
        setState(() {
          print('NavBar: $route');
          routeExists ? Navigator.pushReplacementNamed(context, '/$route') : print('NavBar: $title not implemented');
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

  Widget activeOrdersContainer(String orderType){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Active Orders $orderType',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     ListTile(
                       leading: Icon(Icons.shopping_basket),
                       title: Text('Unique Order Number'),
                       subtitle: Text('Ready', style: TextStyle(color:Colors.green)),
                       trailing: Icon(Icons.check, color: Colors.green),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.green,
                          child: Text('CHARGE'),
                          onPressed: () { /* ... */ },
                        ),
                        RaisedButton(
                          color: Colors.red,
                          child: Text('CANCEL'),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.shopping_basket),
                      title: Text('Unique Order Number'),
                      subtitle: Text('Pending', style: TextStyle(color:Colors.yellow[700])),
                      trailing: Icon(Icons.add_shopping_cart, color: Colors.yellow[700]),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.green,
                          child: Text('READY'),
                          onPressed: () { /* ... */ },
                        ),
                        RaisedButton(
                          color: Colors.red,
                          child: Text('CANCEL'),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.shopping_basket),
                      title: Text('Unique Order Number'),
                      subtitle: Text('Pending', style: TextStyle(color:Colors.yellow[700])),
                      trailing: Icon(Icons.add_shopping_cart, color: Colors.yellow[700]),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.green,
                          child: Text('READY'),
                          onPressed: () { /* ... */ },
                        ),
                        RaisedButton(
                          color: Colors.red,
                          child: Text('CANCEL'),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
