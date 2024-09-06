import 'package:flutter/material.dart';


class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Number ${index}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                Divider()
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NextWidget(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class NextWidget extends StatelessWidget {
  final int index;

  const NextWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item $index'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.'),
      ),
    );
  }
}

