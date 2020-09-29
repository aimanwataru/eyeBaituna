import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.black38,
  fontFamily: 'OpenSans',
);
final kLabelStyle = TextStyle(
  color: Colors.black38,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFFAFAFA),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);