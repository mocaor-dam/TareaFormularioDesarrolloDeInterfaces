import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_job_screen.dart';

class HomeMenuScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeMenuScreen>{

  final _formKey = GlobalKey<FormState>();
  var _contUsuario;
  var _contPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sharing Oportunities", style: TextStyle(color: Colors.white),), centerTitle: true, backgroundColor: Colors.cyan,),

      body: Column(
        children: [
          Expanded(child: Image.asset("assets/images/mono.png")),
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * (MediaQuery.of(context).size.width > 600 ? 0.20 : 0.10),

                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username"
                      ),

                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "Este campo es obligatorio";
                        } else {
                          setState(() {
                            value = _contUsuario;
                          });
                        }
                      },

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * (MediaQuery.of(context).size.width > 600 ? 0.20 : 0.10),

                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password"
                      ),

                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "Este campo es obligatorio";
                        } else {
                          setState(() {
                            value = _contPassword;
                          });
                        }
                      },

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsJobScreen())),
                        child: Text("Entrar", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan, shape: BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(2.0))),  ),
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}