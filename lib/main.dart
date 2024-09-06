import 'package:donation_app/View/Crud.dart';
import 'package:donation_app/View/Target.dart';
import 'package:donation_app/View/product.dart';
import 'package:flutter/material.dart';
import 'package:donation_app/Components/itemlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ItemList(),
      ),
    );
  }
}







// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: 150, // Set the overall height of the ListView
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal, // Set horizontal scrolling
//             itemCount: 5,
//             itemBuilder: (context, index) {
//               return Container(
//                 width: 225, // Set width for each item
//                 margin: EdgeInsets.all(8.0),
//                 color: Colors.amber[300], // Set background color to amber[300]
//                 child: Center(
//                   child: ListTile(
//                     leading: Icon(Icons.person), // Example leading icon
//                     title: Text('Item $index'), // Example title text
//                     subtitle: Text('Subtitle for Item $index'), // Example subtitle
//                     trailing: Icon(Icons.arrow_forward), // Example trailing icon
//                     onTap: () {
//                       // Action when the item is tapped
//                       print('Tapped on item $index');
//                     },
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

