class Dato{
  String _texto;
  int _posicion;
  Dato(String texto, int posicion){
    _texto = texto;
    _posicion = posicion;
  }
  //Tengo la ligera sospecha de que no usaremos ninguno de los metodos get y set
  String getTexto(){
    return _texto;
  }
  int getPosicion(){
    return _posicion;
  }
  void setTexto(String texto){
    _texto = texto;
  }
  void setPosicion(int posicion){
    _posicion = posicion;
  }

}