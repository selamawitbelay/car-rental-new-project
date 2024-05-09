import 'package:car_rental/page/Cars_OverView.dart';
import 'package:car_rental/page/login_page.dart';
import 'package:flutter/material.dart';


//import 'package:flutter_settings_screens/flutter_settings_screens.dart';


class logout extends StatefulWidget {
  @override
  _logoutState createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Are you sure?'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('We will be redirected to login page.'),
            ],
          ),
        ),
        actions: <Widget>[
	FlatButton(
		child: Text('Yes'),
	 onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>LoginPage()));
                    },
	 ),
   	FlatButton(
		child: Text('NO'),
	 onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>CarsOverViewScreen()));
                    },
	 ),
        ]);
  }
}