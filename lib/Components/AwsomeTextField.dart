import 'package:flutter/material.dart';


class AwsomeTextField extends StatelessWidget {
  const AwsomeTextField({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10, left: 20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.black, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fresh Policy'),
          TextField(
            decoration: InputDecoration(
                hintText: 'Enter text', border: InputBorder.none),
          )
        ],
      ),
    );
  }
}
