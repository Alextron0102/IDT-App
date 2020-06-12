import 'package:idtapp/Resources/Util/dato.dart';
import 'package:flutter/material.dart';

class ListaDatos {
  List<Dato> _lista = List<Dato>();
  int _contador = 0;
  ListaDatos(int opcion) {
    //Recibimos una variable opcion, que servirá para deteminar el tipo de lista:
    //Diccionario: 1=años, 2=marca, 3=modelo 4=motor, 5=tranmision,
    int aniobase = 1970;
    int cantidadanios = 50;
    switch (opcion) {
      case 1:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato((aniobase + i).toString(), _contador));
        }
        break;
      case 2:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('marca $i', _contador));
        }
        break;
      case 3:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('modelo $i', _contador));
        }
        break;
      case 4:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('motor $i', _contador));
        }
        break;
    }
  }
  void agregar(Dato dato) {
    if (dato != null) {
      dato.setPosicion(_contador++);
      _lista.add(dato);
    }
  }

  List<Dato> getLista() {
    return _lista;
  }
  Dato getDato(int posicion){
    return _lista[posicion];
  }
  void modificar(String texto, int posicion) {
    _lista[posicion].setTexto(texto);
  }

  int getSize() {
    return _contador;
  }

  Widget _crearCarta(Dato _dato) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text(
                  _dato.getTexto(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ],
          ),
        ));
  }

  List<Widget> crearLista() {
    return _lista.map((dato) => _crearCarta(dato)).toList();
  }
}
