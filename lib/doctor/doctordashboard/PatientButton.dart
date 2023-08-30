import 'package:flutter/material.dart';
import '../patientList/PatientListScreen.dart';
class PatientButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){
     return Container(
  margin:  EdgeInsets.all(10),
    child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 35, 20).withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            //padding:EdgeInsets.all(10),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: ListTile (
              leading: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                   borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("P",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 134, 243).withOpacity(0.6),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
              
                )
              ),
              title: TextButton(
                  child: const Text('Patients',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                   
                   ),
                  ),
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PatientListScreen()));

                
                  },
                ),

            ) ,
            )
            
          ),
 );

  }
}