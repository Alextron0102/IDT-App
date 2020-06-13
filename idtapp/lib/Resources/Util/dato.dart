class Dato{
  String _texto;
  bool _estado;
  Dato(String texto){
    _texto = texto;
    _estado=false;
  }
  //Tengo la ligera sospecha de que no usaremos ninguno de los metodos get y set
  String getString(){
    return _texto;
  }
  int getInt(){
    return int.parse(_texto);
  }
  void setTexto(String texto){
    _texto = texto;
  }
  bool getestado(){
    return _estado;
  }
  void setestado(bool estado){
    _estado = estado;
  }
}