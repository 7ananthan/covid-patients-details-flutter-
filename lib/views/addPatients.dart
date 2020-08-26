import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AddPatients extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController place = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: <Widget>[
          TextField(
            controller: name,
            decoration: InputDecoration(hintText: "Patient name"),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: age,
            decoration: InputDecoration(hintText: "Patient Age"),
        ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: place,
            decoration: InputDecoration(hintText: "Patient place"),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text(
              "Add Patient"
            ),
            onPressed: (){

            },
          ),
          RaisedButton(
            child: Text("Add another Patient"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Myapp()));
            },
          )
        ],
      ),
    );
  }
}
