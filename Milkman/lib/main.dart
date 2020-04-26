import 'package:flutter/material.dart';
import 'package:milkmanscreenbanger/common/theme.dart';
import 'package:milkmanscreenbanger/screens/customer_home.dart';
import 'package:milkmanscreenbanger/screens/login_user_type.dart';
import 'package:milkmanscreenbanger/screens/register.dart';
import 'package:milkmanscreenbanger/screens/register_customer.dart';
import 'package:milkmanscreenbanger/screens/register_user_type.dart';
import 'package:milkmanscreenbanger/screens/register_vendor.dart';
import 'package:milkmanscreenbanger/screens/vendor_home.dart';
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {//fixes keyboard not closing
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MilkmanLogin(),
          '/register': (context) => MilkmanRegister(),
          '/register_user_type': (context) => RegisterUserType(),
          '/login_user_type': (context) => LoginUserType(),
          '/register_vendor': (context) => RegisterVendor(),
          '/register_customer': (context) => RegisterCustomer(),
          '/vendor_home': (context) => VendorHome(),
          '/customer_home': (context) => CustomerHome(),

        }
      ),
    );
  }
}

