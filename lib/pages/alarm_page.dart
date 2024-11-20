  import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  final List<String> items = ['04:25', '05:30', '20:00', '22:00'];
  final List<String> itemDesc = ['Bangun', 'Mandi', 'Nugas', 'Tidur'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.alarm, color: Colors.white),
              ),
              title: Text(
                items[index],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                itemDesc[index],
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Alarm ${itemDesc[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
