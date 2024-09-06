import 'package:flutter/material.dart';


class FieldList extends StatelessWidget {
  final int numberOfFields;

  const FieldList({required this.numberOfFields});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Field List'),
      ),
      body: ListView.builder(
        itemCount: numberOfFields,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Field ${index + 1}',
                border: OutlineInputBorder(),
              ),
            ),
          );
        },
      ),
    );
  }
}

