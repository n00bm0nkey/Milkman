import 'package:flutter/material.dart';

class RegisterCustomer extends StatefulWidget {
  @override
  _RegisterCustomerState createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Customer Registration',
        ),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.cancel),
            label: Text('Cancel'),
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
                Text(
                  'Basic Information',

                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.business),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Phone number",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.language),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Country",
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text( //TODO: Google Maps API integration
                  'Address',

                ),
                ListTile(
                  leading: Icon(Icons.gps_fixed),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Address Line 1",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.gps_not_fixed),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Address Line 2",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.location_city),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "City",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_post_office),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Post Code",
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('REGISTER'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
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
