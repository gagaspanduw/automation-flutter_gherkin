import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'language.dart';

void main() => runApp(FacebookClone());

class FacebookClone extends StatelessWidget {

  var emailInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF284881)
    )); 
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF495589)
        
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFFFFFFF),
            child: SafeArea(
              child: Column(
                children: <Widget>[ 
                  Image.asset('images/login_illustration.jpeg'),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 28),
                    child: Language(),
                  ),
                  // Input form holder
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: emailInputController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 18.0, 
                            ),
                            hintText: 'Phone or Email',
                            hintStyle: TextStyle(color: Color(0xFFBABBBF)),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 18.0, 
                            ),
                            hintStyle: TextStyle(color: Color(0xFFBABBBF)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button login
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:  Container(
                          height: 42.0,
                          margin: EdgeInsets.symmetric(vertical: 28.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 42.0,
                          ),
                          child: RaisedButton(
                            child: Text('Log In'),
                            onPressed: () {
                              
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            color: Color(0xFF216FDB),
                            textColor: Color(0xFF8BB9FA),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Button forgot password
                  Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF2466BD), 
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Text(
                    emailInputController.text
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 43.0,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Divider(
                          color: Color(0xFFCDCDCD),
                        ),
                        Center(
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('OR'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button holder
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:  Container(
                          height: 38.0,
                          margin: EdgeInsets.symmetric(vertical: 28.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 62.0,
                          ),
                          child: RaisedButton(
                            child: Text('Create New Facebook Account'),
                            onPressed: () {
                              
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            color: Color(0xFF31A14B),
                            textColor: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}