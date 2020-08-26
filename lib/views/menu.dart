import 'package:covid_patient_details/views/addPatients.dart';
import 'package:covid_patient_details/views/viewPatients.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final appPages=[AddPatients(),ViewDetails()];
  int appCurrentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Covid Patients"),),
        body: appPages[appCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              appCurrentIndex=index;
            });

          },
          type: BottomNavigationBarType.fixed,
            currentIndex: appCurrentIndex,
          backgroundColor: Colors.blue,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.white,),
              title: Text("Add Patients",style: TextStyle(color: Colors.white),)
              ),
              BottomNavigationBarItem(icon: Icon(Icons.view_list,color: Colors.white,),
              title: Text("View all",style: TextStyle(color: Colors.white),))
            ]),
      ),

    );
  }
}
