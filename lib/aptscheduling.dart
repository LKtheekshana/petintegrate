import 'package:flutter/material.dart';

class SchedulingPage extends StatelessWidget {
  final String selectedDate;

  SchedulingPage({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheduling',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Date',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.purple[200]!),
                ),
                child: Text(
                  selectedDate, // Use the selected date passed to the constructor
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.purple[600],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              // Input Fields
              buildTextField(label: 'Pet Type'),
              SizedBox(height: 15),
              buildTextField(label: 'Pet Name'),
              SizedBox(height: 15),
              buildTextField(label: 'Appointment Type / Service'),
              SizedBox(height: 15),
              buildTextField(label: 'Special Notes', maxLines: 3),
              SizedBox(height: 30),

              // Cancel and Confirm Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple[200],
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              // Fixed here
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add confirm logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            // Fixed here
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({required String label, int? maxLines}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.purple, fontSize: 16),
        ),
        SizedBox(height: 5),
        TextField(
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.purple[200]!),
            ),
            filled: true,
            fillColor: Colors.purple[50],
          ),
        ),
      ],
    );
  }
}
