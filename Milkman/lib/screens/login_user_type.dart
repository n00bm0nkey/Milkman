import 'package:flutter/material.dart';

class LoginUserType extends StatefulWidget {
  @override
  _LoginUserTypeState createState() => _LoginUserTypeState();
}

class _LoginUserTypeState extends State<LoginUserType> {
  bool _focusedCustomer = true;

  void _toggleFocusCustomer() {
    setState(() {
      _focusedCustomer = true;
    });
  }

  void _toggleFocusVendor() {
    setState(() {
      _focusedCustomer = false;
    });
  }

  void _loginFunction(){
    setState(() {
      if (_focusedCustomer){
        Navigator.pushReplacementNamed(context, '/customer_home');
        print('Customer Login');
      } else {
        Navigator.pushReplacementNamed(context, '/vendor_home');
        print('Vendor Login');
      }
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Select User Type'),
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person_outline),
                label: Text('Logout'),
                onPressed: () async {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ), //FlatButton
            ],
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 162,
                        height: 100,
                        child: RaisedButton(
                          color: _focusedCustomer ? Colors.yellow : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          child: Text(
                            'Customer',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () async {
                            print('Customer');
                            _toggleFocusCustomer();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 162,
                        height: 100,
                        child: RaisedButton(
                          color: _focusedCustomer ? Colors.white : Colors.yellow,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          child: Text(
                            'Vendor',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () async {
                            print('Vendor');
                            _toggleFocusVendor();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 162,
                    height: 100,
                    child: RaisedButton(
                      color: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                      ),
                      child: Text(
                        'Delivery\n'
                            'Service TBA',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () async {
                        print('Delivery Service to be announced');
                      },
                    ),
                  ),
                  RaisedButton(
                    color: Colors.yellow,
                    child: Text('ENTER'),
                    onPressed: () {
                      _loginFunction();
                    },
                  )
                ]
            ),
          )
      );
    }
  }
