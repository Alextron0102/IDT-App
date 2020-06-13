import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Util/messagebox.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:idtapp/Resources/Util/listadato.dart';
import 'package:idtapp/Resources/Util/dato.dart';
import 'package:idtapp/Resources/Util/repuesto.dart';

class MakeRequest extends StatefulWidget {
  static final name = '/MakeRequest';
  @override
  _MakeRequestState createState() => _MakeRequestState();
}

class _MakeRequestState extends State<MakeRequest> {
  final arr = ['Año', 'Marca', 'Modelo', 'Motor', ''];
  static ListaDatos listaDatos = new ListaDatos();
  static Repuesto _repuesto;
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
                  _dato.getString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  listaDatos.siguientePaso(_dato);
                  if(listaDatos.getPaso()==6){
                    _repuesto = listaDatos.getrepuesto();
                    listaDatos = new ListaDatos();
                    Navigator.pop(context, _repuesto);
                  }
                  
                  setState((){});
                },
              ),
            ],
          ),
        ));
  }
  List<Widget> crearLista() {
    return listaDatos.getLista().map((dato) => _crearCarta(dato)).toList();
  }
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
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
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
                    "Siga los pasos para realizar su pedido");
              },
              child: Icon(Icons.info, size: 30),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          StepProgressIndicator(
            totalSteps: 5,
            currentStep: listaDatos.getPaso(),
            size: MediaQuery.of(context).size.height / 14,
            padding: 0,
            selectedColor: Colors.red,
            unselectedColor: Colors.white,
            customStep: (currentStep, color, size) =>
                (currentStep == listaDatos.getPaso() - 1)
                    ? Container(
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            arr.elementAt(listaDatos.getPaso() - 1),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : (currentStep > listaDatos.getPaso() - 1)
                        ? Container(
                            color: Colors.white,
                            child: Icon(
                              Icons.remove,
                              size: 40.0,
                              color: Colors.grey,
                            ),
                          )
                        : Container(
                            color: Colors.white,
                            child: Icon(
                              Icons.check,
                              size: 40.0,
                              color: Colors.grey,
                            ),
                          ),
          ),
          new Expanded(
            child: new ListView(
              addAutomaticKeepAlives: true,
              addRepaintBoundaries: true,
              children: crearLista()
            ),
          ),
        ],
      ),
          
    );
  }
}
