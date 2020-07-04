import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Util/messagebox.dart';

//Lista de vehiculos widget
class Calculator extends StatefulWidget {
  static final name = '/Calculator';
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final textoIngreso = TextEditingController();
  var precio = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/images/logo/logotransparent.png'),
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 10,
            fit: BoxFit.fill,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  return messageBox(context, "INFORMACION",
                      "Introduzca el peso en kg para calcular el precio");
                },
                child: Icon(Icons.info, size: 30),
              ),
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 16,
                0, MediaQuery.of(context).size.width / 16, 0),
            child: new Column(
              children: <Widget>[
                Text(
                  "Ingrese el peso en kg de su repuesto para calcular su precio:",
                  style: TextStyle(
                    fontFamily: 'Solano',
                    color: Colors.black,
                    fontSize: 45.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Center(
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'Solano',
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                    controller: textoIngreso,
                    cursorColor: Colors.black,
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    onChanged: (text) {
                      setState((){
                      precio = double.parse(text) * 100;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      contentPadding:
                          EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                      hintText: 'Ingrese peso en kg',
                      hintStyle:
                          TextStyle(fontFamily: 'Solano', color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  "El precio es de: ",
                  style: TextStyle(
                    fontFamily: 'Solano',
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  precio.toString(),
                  style: TextStyle(
                    fontFamily: 'Solano',
                    color: Colors.red,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  " soles",
                  style: TextStyle(
                    fontFamily: 'Solano',
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            )));
  }
}
