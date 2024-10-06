import 'package:flutter/material.dart';
import 'appointment.dart';
import 'aptscheduling.dart'; // Importing the scheduling page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appointment App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AppointmentPage(), // Start with the AppointmentPage
    );
  }
}
