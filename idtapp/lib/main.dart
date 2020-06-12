import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Pages/loginpage.dart';
import 'package:idtapp/Resources/Pages/carpage.dart';
import 'package:idtapp/Resources/Pages/makerequest.dart';
void main() => runApp(MyApp());
//ROUTER PAGE
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDT APP',
      initialRoute: Login.name,
      home: Login(),
      routes: {
        Login.name: (BuildContext context) => Login(),
        CarList.name: (BuildContext context) => CarList(),
        MakeRequest.name: (BuildContext context) => MakeRequest(),
      }
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
    );
  }
}


