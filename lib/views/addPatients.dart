import 'dart:convert';

import 'package:covid_patient_details/models/patientModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

Future<PatientData> createPost(String apiUrl,{Map data}) async{
  return http.post(apiUrl,body:data).then((http.Response response){
    
    final int statusCode=response.statusCode;
    
    if(statusCode!=200)
      {
        throw new Exception("Exception occured");
     }
    print(response.body);
    return (json.decode(response.body));
  });
} 

class AddPatients extends StatelessWidget {
  TextEditingController name_controller = TextEditingController();
  TextEditingController age_controller = TextEditingController();
  TextEditingController place_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: <Widget>[
          TextField(
            controller: name_controller,
            decoration: InputDecoration(hintText: "Patient name"),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: age_controller,
            decoration: InputDecoration(hintText: "Patient Age"),
        ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: place_controller,
            decoration: InputDecoration(hintText: "Patient place"),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text(
              "Add Patient"
            ),
            onPressed: ()async{
            PatientData patientData =new PatientData(
              name: name_controller.text,
              age: age_controller.text,
              place: place_controller.text
            );
            
            //API Calling
            PatientData myData =await  createPost(

              "https://coviddetalsnode.herokuapp.com/patient/add",
               data:patientData.toJson()

            );


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
