import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.dashboard),
            title: Text(items[index]),
            onTap: () {
              // Add functionality here for item tap if needed
            },
          );
        },
      ),
    );
  }
}
