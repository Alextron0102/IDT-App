class Repuesto {
  int _anio;
  String _marca;
  String _modelo;
  String _motor;// litros/octanaje/gasolina o diesel
  String _datoPrueba;
  bool _transmision; //0= manual, 1= automatico
  bool _uso;//0=normal, 1=intenstivo
  String _placa;
  Repuesto();
  void setanio(int anio){
    _anio = anio;
  }
  void setmarca(String marca){
    _marca = marca;
  }
  void setmodelo(String modelo){
    _modelo = modelo;
  }
  void setmotor(String motor){
    _motor = motor;
  }
  void settransmision(bool transmision){
    _transmision = transmision;
  }
  void setuso(bool uso){
    _uso = uso;
  }
  void setplaca(String placa){
    _placa = placa;
  }
  void datoPrueba(String dato){
    _datoPrueba = dato;
  }

  int getanio(){
    return _anio ;
  }
  String getmarca(){
    return _marca ;
  }
  String getmodelo(){
    return _modelo ;
  }
  String getmotor( ){
    return _motor ;
  }
  bool gettransmision( ){
    return _transmision ;
  }
  bool getuso( ){
    return _uso ;
  }
  String getplaca( ){
    return _placa ;
  }
  String getDatoPrueba( ){
    return _datoPrueba ;
  }
  @override
  String toString(){
    return getmarca()+', '+getanio().toString()+': '+getmodelo()+'\n'+getmotor()+' - '+getDatoPrueba();
  }
}