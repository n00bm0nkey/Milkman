// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
class MilkmanRegister extends StatefulWidget {
  @override
  _MilkmanRegisterState createState() => _MilkmanRegisterState();
}

class _MilkmanRegisterState extends State<MilkmanRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
            'Register',
        ),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Login'),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
           },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/images/Milkman_Logo_Draft.png'),
                ),
                TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('ENTER'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register_user_type');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
