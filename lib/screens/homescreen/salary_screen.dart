import 'package:flutter/material.dart';

class SalaryScreen extends StatefulWidget {
  @override
  _SalaryScreenState createState() => _SalaryScreenState();
}

class _SalaryScreenState extends State<SalaryScreen> {

  final List<Map<String, dynamic>> employees = [
    {
      'name': 'John Doe',
      'workingDays': 25,
      'holidaysTaken': 5,
      'overtime': 10,
      'netPayout': 25000,
    },
    {
      'name': 'Jane Smith',
      'workingDays': 22,
      'holidaysTaken': 2,
      'overtime': 5,
      'netPayout': 20000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salary'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Working Days:'),
                      Text('${employee['workingDays']}'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Holidays Taken:'),
                      Text('${employee['holidaysTaken']}'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Overtime:'),
                      Text('${employee['overtime']}'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Net Payout:'),
                      Text('${employee['netPayout']}'),
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