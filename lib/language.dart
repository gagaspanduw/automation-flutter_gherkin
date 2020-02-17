import 'package:flutter/material.dart';

const textStyle = TextStyle(
  color: Color(0xFF737373),
  fontWeight: FontWeight.w500
);

const roundTextStyle = TextStyle(
  color: Color(0xFF737373),
  fontWeight: FontWeight.w900
);

const textColor = Color(0xFF737373);

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('English', style: textStyle),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            '\u00b7',
            style: roundTextStyle
          ),
        ),
        Text('Bahasa Melayu', style: textStyle),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            '\u00b7',
            style: roundTextStyle
          ),
        ),
        Text('More...', style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF4B5882)
        )),
      ]
    );
  }
}