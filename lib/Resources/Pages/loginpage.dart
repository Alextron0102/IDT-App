import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Pages/carpage.dart';
//Login widget
class Login extends StatefulWidget {
  static final name = '/Login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/background/raceflag.gif',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/5, MediaQuery.of(context).size.height/16, MediaQuery.of(context).size.width/5, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/images/logo/logo.png'),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/8,
                ),
                Center(
                  child: TextField(
                    //FocusScope.of(context).requestFocus(new FocusNode()),
                    style: TextStyle(
                      fontFamily: 'Solano',
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                    cursorColor: Colors.white,
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      contentPadding:
                          EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                      hintText: 'USUARIO',
                      hintStyle:
                          TextStyle(fontFamily: 'Solano', color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/10,
                ),
                Center(
                  child: TextField(
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Solano',
                        color: Colors.white),
                    cursorColor: Colors.white,
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      contentPadding:
                          EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                      hintText: 'CONTRASEÑA',
                      hintStyle:
                          TextStyle(fontFamily: 'Solano', color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  //vacio, espacio de separación:
                  height: MediaQuery.of(context).size.height/6,
                ),
                Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CarList.name);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      side: BorderSide(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    color: Colors.red,
                    padding: const EdgeInsets.fromLTRB(
                        50, 10, 50.0, 5), //Definir que tan grande es el boton
                    child: Text(
                      'INGRESAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Solano',
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}