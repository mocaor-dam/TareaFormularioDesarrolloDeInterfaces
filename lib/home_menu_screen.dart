import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_job_screen.dart';

class HomeMenuScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeMenuScreen>{

  final _formKey = GlobalKey<FormState>();

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
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username"
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password"
                      ),

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