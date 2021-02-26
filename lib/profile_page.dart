import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextStyle tsProp = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 16
  );

  TextStyle tsValue = TextStyle(
    color: Colors.black,
    fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: tsValue),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 1,
        leading: IconButton(
          key: Key('iconBack'),
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context)
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24),
              Icon(Icons.person_pin, size: 120),
              SizedBox(height: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Full Name',
                    style: tsProp,
                  ),
                  Text(
                    'Zonen GAJAYANA',
                    style: tsValue,
                    key: Key('namaField'),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Email',
                    style: tsProp,
                  ),
                  Text(
                    'zonen@getnada.com',
                    style: tsValue,
                    key: Key('emailField'),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Phone Number',
                    style: tsProp,
                  ),
                  Text(
                    '+62 821 4360 8440',
                    style: tsValue,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Address',
                    style: tsProp,
                  ),
                  Text(
                    '192.168.21.43',
                    style: tsValue,
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}