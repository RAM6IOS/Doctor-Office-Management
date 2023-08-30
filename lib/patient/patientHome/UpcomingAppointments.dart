import 'package:flutter/material.dart';
import '../appointments/UpcomingAppointmentsScreen.dart';


class UpcomingAppointments extends StatelessWidget {

  @override
  Widget build(BuildContext context){
     return Container(
  margin:  EdgeInsets.all(10),
    child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 245, 237, 93).withOpacity(0.5),
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
                      Text("U",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 134, 243).withOpacity(0.6),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
              
                )
              ),
              title: TextButton(
                  child: const Text('Appointments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                   
                   ),
                  ),
                  onPressed: () {
                     Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => UpcomingAppointmentsScreen(
      upcomingAppointments: [
        Appointment(date: '2023-08-25', time: '10:00 AM', reason: 'Routine checkup'),
        Appointment(date: '2023-08-28', time: '3:30 PM', reason: 'Follow-up visit'),
        // Add more appointments here
      ],
    ),
  ),
                     );
                

                
                  },
                ),

            ) ,
            )
            
          ),
 );

  }
}