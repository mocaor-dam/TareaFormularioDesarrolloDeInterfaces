import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formulario/data/details.dart';

class DetailScreen extends StatelessWidget{
  Details _details;
  

  DetailScreen({required this._details,super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          Text(_details.contText),
          if(_details.isRemote) Text("100% Remote") else Text("Not Remote"),
          Text("Experiencia en: "),
          if(_details.android == true) Text("Android") else Text(""),
          if(_details.flutter == true) Text("Flutter") else Text(""),
          if(_details.ios == true) Text("iOS") else Text(""),
          
          Text("Salary from ${_details.currentRangeValues.start} to ${_details.currentRangeValues.end}")
        ],
      ),
    );
  }
  
}

