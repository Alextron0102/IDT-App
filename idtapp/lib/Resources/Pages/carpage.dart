import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Util/messagebox.dart';
import 'package:idtapp/Resources/Pages/makerequest.dart';
import 'package:idtapp/Resources/Util/repuesto.dart';
//Lista de vehiculos widget
class CarList extends StatefulWidget {
  static final name = '/CarList';
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
    static List<Repuesto> _repuestos = new List<Repuesto>();
    Widget _crearCarta(Repuesto _repuesto) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text(
                  _repuesto.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {          

                  setState((){});
                },
              ),
            ],
          ),
        ));
  }
  List<Widget> crearLista() {
    return _repuestos.map((repuesto) => _crearCarta(repuesto)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/images/logo/logotransparent.png'),
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height/10,
          fit: BoxFit.fill,
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
              onTap: () async {
                dynamic _repuesto = await Navigator.pushNamed(context, MakeRequest.name) as Repuesto;
                _repuestos.add(_repuesto);
                setState((){});
              },
              child: Icon(Icons.add_circle, size: 30),
            ),
          ),
        ],
      ),
      body: new ListView(
              addAutomaticKeepAlives: true,
              addRepaintBoundaries: true,
              children: crearLista()
            ),
    );
  }
}
