import 'package:flutter/material.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('HomeView'),
            leading: Icon(Icons.back_hand),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.access_alarm_outlined),
              )
            ],
            backgroundColor: Colors.amber[100],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wecome Home'),
                Text(
                  'MITCHO KOKO',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Divider(
                    color: Colors.grey, // Set the color of the divider
                    thickness: 1.0,
                  ),
                ),

                MyGridView()

              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  // List of grid items with an additional boolean to track switch state
  final List<GridItem> items = [
    GridItem(icon: Icons.lightbulb, label: 'Bulb', isSwitched: false),
    GridItem(icon: Icons.ac_unit, label: 'Remote AC', isSwitched: false),
    GridItem(icon: Icons.tv, label: 'Smart TV', isSwitched: false),
    GridItem(icon: Icons.air, label: 'Smart Fan', isSwitched: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 40), // Add bottom padding of 40
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  decoration: BoxDecoration(
                    color: item.isSwitched ? Colors.green : Colors.blueAccent, // Change color based on switch state
                    borderRadius: BorderRadius.circular(12), // Set the corner radius to 12
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          item.icon,
                          color: Colors.white,
                          size: 40, // Adjust the size as needed
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Switch(
                              value: item.isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  item.isSwitched = value;
                                   // Update switch state
                                });
                              },
                            ),
                            Text(
                              item.label,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class GridItem {
  final IconData icon;
  final String label;
  bool isSwitched;

  GridItem({
    required this.icon,
    required this.label,
    this.isSwitched = false,
  });
}
