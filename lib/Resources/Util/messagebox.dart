import 'package:flutter/material.dart';
Future<void> messageBox(BuildContext _context, String _title, String _content) async {
  return showDialog<void>(
    context: _context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(_title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(_content),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}