import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsJobScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailsInfoScreen();
}

class DetailsInfoScreen extends State<DetailsJobScreen> {
  bool _isRemote = false;
  bool _flutter = false;
  bool _android = false;
  bool _ios = false;

  RangeValues _currentRangeValues =  RangeValues(40, 80);

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
            CheckboxListTile(
              title: Text("Flutter"),
              value: _flutter,
              onChanged: (value) {
                setState(() {
                  _flutter = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Android"),
              value: _android,
              onChanged: (value) {
                setState(() {
                  _android = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("iOS"),
              value: _ios,
              onChanged: (value) {
                setState(() {
                  _ios = value!;
                });
              },
            ),

            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 5,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsJobScreen())),
              child: Text("View Details", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan, shape: BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(2.0))),)
          ],
        ),
      ),
    );
  }
}
