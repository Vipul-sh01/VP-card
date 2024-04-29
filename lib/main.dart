import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: hexToColor('#f79245'),
        body:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('images/vip1.jpg'),
            ),
            Text(''
                'Vipul Sharma',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF)
              ),
            ),
            SizedBox(height: 10.0,),
            Text(''
                'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF),
              ),
            ),
           SizedBox(
             height: 15.0,
             width: 150.0,
             child: Divider(
               color: Color(0xFFFFFFFF),
             ),
           ),
           Card(
             color: Color(0xFFFFFFFF),
             margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
             child: ListTile(
               leading: Icon(
                 Icons.phone_android,
                 color: Color(0xFFF2BB76),
               ),
               title: Text(''
                   '+918578086021',
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                   color: Color(0xFFF2BB76),
                 ),
               ),
             ),
           ),
            Card(
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0xFFF2BB76),
                ),
                title: Text(
                  'Vipulsharma@6021gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xFFF2BB76),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
