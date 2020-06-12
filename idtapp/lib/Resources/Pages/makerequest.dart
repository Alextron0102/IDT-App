import 'package:flutter/material.dart';
import 'package:idtapp/Resources/Util/messagebox.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:idtapp/Resources/Util/listadato.dart';

class MakeRequest extends StatefulWidget {
  static final name = '/MakeRequest';
  @override
  _MakeRequestState createState() => _MakeRequestState();
}

class _MakeRequestState extends State<MakeRequest> {
  final arr = ['Año', '2', '3', '4', '5'];
  static int _currentstep = 1; //Empieza en 1, termina en 5
  final ListaDatos listaDatos = new ListaDatos(_currentstep);
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
            currentStep: _currentstep,
            size: MediaQuery.of(context).size.height / 14,
            padding: 0,
            selectedColor: Colors.red,
            unselectedColor: Colors.white,
            customStep: (currentStep, color, size) =>
                (currentStep == _currentstep - 1)
                    ? Container(
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            arr.elementAt(_currentstep - 1),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : (currentStep > _currentstep - 1)
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
              children: listaDatos.crearLista()
            
            ),
          ),
        ],
      ),
    );
  }
}
