import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsJobScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailsInfoScreen();
}

class DetailsInfoScreen extends State<DetailsJobScreen> {
  bool _isRemote = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sharing Oportunities",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Job Title",
                hintText: "Job Title",
              ),
            ),
            SwitchListTile(
              title: Text("Remote"),
              value: _isRemote,
              activeThumbColor: Colors.lightBlue,
              onChanged: (value) {
                setState(() {
                  _isRemote = value;
                });
              },
            ),
            const Divider(),
            
            Center(child: Text("Coding experience in")),

          ],
        ),
      ),
    );
  }
}
