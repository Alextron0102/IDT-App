import 'package:idtapp/Resources/Util/dato.dart';
import 'package:idtapp/Resources/Util/repuesto.dart';
import 'package:flutter/material.dart';

class ListaDatos {
  Repuesto _repuesto = new Repuesto();
  List<Dato> _lista = List<Dato>();
  int _paso = 1;
  ListaDatos() {
    agregarDatos();
  }
  void agregarDatos() {
    //Recibimos una variable opcion, que servirá para deteminar el tipo de lista:
    //Diccionario: 1=años, 2=marca, 3=modelo 4=motor, 5=tranmision,
    _lista.clear();
    int aniobase = 1970;
    int cantidadanios = 50;
    switch (_paso) {
      case 1:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato((aniobase + i).toString()));
        }
        break;
      case 2:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('marca $i'));
        }
        break;
      case 3:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('modelo $i'));
        }
        break;
      case 4:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('motor $i'));
        }
        break;
      case 5:
        for (var i = 0; i < cantidadanios; i++) {
          agregar(new Dato('paso5 $i'));
        }
        break;
    }
  }

  void agregar(Dato dato) {
    if (dato != null) {
      _lista.add(dato);
    }
  }

  List<Dato> getLista() {
    return _lista;
  }

  Dato getDato(int posicion) {
    return _lista[posicion];
  }

  int getPaso() {
    return _paso;
  }

  void modificar(String texto, int posicion) {
    _lista[posicion].setTexto(texto);
  }
  Repuesto getrepuesto(){
    return _repuesto;
  }
  void siguientePaso(Dato _dato) {
    switch (_paso) {
      case 1:
        _repuesto.setanio(_dato.getInt());
        break;
      case 2:
        _repuesto.setmarca(_dato.getString());
        break;
      case 3:
        _repuesto.setmodelo(_dato.getString());
        break;
      case 4:
        _repuesto.setmotor(_dato.getString());
        break;
      case 5:
        _repuesto.datoPrueba(_dato.getString());
        break;
    }
    _paso++;
    agregarDatos();
  }
}
