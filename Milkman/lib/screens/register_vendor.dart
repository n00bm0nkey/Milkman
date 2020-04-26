import 'package:flutter/material.dart';

class RegisterVendor extends StatefulWidget {
  @override
  _RegisterVendorState createState() => _RegisterVendorState();
}

class _RegisterVendorState extends State<RegisterVendor> {
  @override

  List<bool> _focusedDays = [true, false, false, false, false, false, false];
  List<String> _labelsDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  void _clearFocus() {
    setState(() {
      for (var i=0; i<_focusedDays.length; i++) {
        _focusedDays[i] = false;
      }
    });
  }

  void _newFocusDay(int i) {
    setState(() {
      _clearFocus();
      _focusedDays[i] = true;
    });
  }



  List<Widget> _buildDays() {
    List<Widget> listButtons = List.generate(_labelsDays.length, (i) {
      return SizedBox(
        width: 40,
        child: ClipOval(
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)
            ),
            color: _focusedDays[i] ? Colors.yellow : Colors.white,
            child: Text(
              "${_labelsDays[i]}",
            ),
            onPressed: () async {
              print('focus: ${_labelsDays[i]}');
              _newFocusDay(i);
            },
          ),
        ),
      );
    });

    return listButtons;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Vendor Registration',
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
                  'Trading Information',

                ),
                ListTile(
                  leading: Icon(Icons.business),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Trading Name",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Shop Identifier (I.E City West)",
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
                ListTile(
                  leading: Icon(Icons.gavel),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Registration Number",
                    ),
                  ),
                ),
                ListTile( //TODO: implement FilterChip with add functionality
                  leading: Icon(Icons.label),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Category Labels",
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Contact Information',

                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Contact Name",
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.business),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Contact Phone number",
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
                Text( //TODO: Stripe Integration & Card or IBAN based registration
                'Payment Details'

                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "IBAN",
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                    'Opening Hours'

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildDays()
                ),


                    ListTile(
                      leading: Icon(Icons.schedule),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            child: RaisedButton(
                              color: Colors.yellow,
                              onPressed: () => showTimePicker(context: context, initialTime: TimeOfDay(hour:9, minute: 0)),
                              child: Text("Open"),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: RaisedButton(
                              color: Colors.yellow,
                              onPressed: () => showTimePicker(context: context, initialTime: TimeOfDay(hour:18, minute: 0)),
                              child: Text("Closed"),
                            ),
                          )
                        ]
                      ),
                    ),


                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('REGISTER'),
                  onPressed: () { //TODO: verification page & cloud functions
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
