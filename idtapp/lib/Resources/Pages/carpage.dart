import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Util/messagebox.dart';
import 'package:idtapp/Resources/Pages/makerequest.dart';
//Lista de vehiculos widget
class CarList extends StatefulWidget {
  static final name = '/CarList';
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/images/logo/logotransparent.png'),
          width: MediaQuery.of(context).size.width / 5,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size:30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                return messageBox(context,"EMAIL","Disponible en proximas versiones");
              },
              child: Icon(Icons.email, size:30),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MakeRequest.name);
              },
              child: Icon(Icons.add_circle, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
