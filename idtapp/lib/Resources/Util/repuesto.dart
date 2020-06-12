class Repuesto {
  int _anio;
  String _marca;
  String _modelo;
  String _motor;// litros/octanaje/gasolina o diesel y por ultimo: no se
  bool _transmision; //0= manual, 1= automatico
  bool _uso;//0=normal, 1=intenstivo
  String _placa;
  Repuesto(){}
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
}