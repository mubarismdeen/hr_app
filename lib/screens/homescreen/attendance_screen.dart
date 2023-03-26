import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {

  final List<Map<String, dynamic>> employees = [
    {
      'name': 'John Doe',
      'attendance': [
        {'date': DateTime(2022, 3, 1), 'isPresent': true},
        {'date': DateTime(2022, 3, 2), 'isPresent': true},
        {'date': DateTime(2022, 3, 3), 'isPresent': false},
        {'date': DateTime(2022, 3, 4), 'isPresent': true},
        {'date': DateTime(2022, 3, 5), 'isPresent': true},
      ],
    },
    {
      'name': 'Jane Smith',
      'attendance': [
        {'date': DateTime(2022, 3, 1), 'isPresent': true},
        {'date': DateTime(2022, 3, 2), 'isPresent': false},
        {'date': DateTime(2022, 3, 3), 'isPresent': true},
        {'date': DateTime(2022, 3, 4), 'isPresent': true},
        {'date': DateTime(2022, 3, 5), 'isPresent': false},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (BuildContext context, int index) {
          final employee = employees[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    employee['name'],
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    children: [
                      for (final attendance in employee['attendance'])
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatDate(attendance['date'], [yyyy, '-', mm, '-', dd])),
                            Text(attendance['isPresent'] ? 'Present' : 'Absent'),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}