import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter for Beginners'),
            centerTitle: true,
            backgroundColor: Colors.green[600],
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Left',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Column(
                children: [
                  Text(
                    'Flutter Body',
                    style: TextStyle(
                      fontFamily: 'Poppins', // Corrected font family name
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                  ),

                  //2nd Text
                  Text(
                    'Poppins-Black',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //ExtraBold
                  Text(
                    "Poppins-ExtraBold",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),

                  Text(
                    'Poppins-SemiBold',
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w600, // Correct font weight for SemiBold
                      fontFamily: 'Poppins',
                      color: Colors.blueAccent,
                    ),
                  ),

                  Text(
                    'Poppins-Medium', // Adjusted label to match the font weight used
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w500, // Correct font weight for Medium
                      fontFamily: 'Poppins',
                      color: Colors.lightBlue,
                    ),
                  ),

                  Container(
                      height: 150, child: Image.asset('assets/leaf.avif')),

                  Container(
                    padding: EdgeInsets.fromLTRB(100, 40, 20, 20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'Paddign Test',
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Hello World'),
                        FloatingActionButton(onPressed: () {}),
                        Container(
                          color: Colors.green,
                          child: Text('Inside Container'),
                          padding: EdgeInsets.all(15),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Container(
                                child: Text('Description'), 
                              ),



                            Text('Title ',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),),
                            Text('Description'),
                          ],
                        ),

                        
                        Spacer(),
                        // Text('Hello World'),
                        FloatingActionButton(onPressed: () {},
                        child: Icon(Icons.arrow_forward),),

                        // Container(
                        //   color: Colors.green,
                        //   child: Text('Inside Container'),
                        //   padding: EdgeInsets.all(15),
                        // )
                      ],
                    ),
                  ),

Container(
  margin: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
                  
                   Expanded(
                    flex: 2,
                     child: Container(color: Colors.red,
                     padding: EdgeInsets.all(15),
                     child: Text('1'),),
                   ),
  
                    Expanded(
                    flex: 2,
                     child: Container(color: Colors.amber,
                     padding: EdgeInsets.all(15),
                     child: Text('1'),),
                   ),
  
                    Expanded(
                    flex: 2,
                     child: Container(color: Colors.green,
                     padding: EdgeInsets.all(15),
                     child: Text('1'),),
                   ),
  
                    Expanded(
                    flex: 1,
                     child: Container(color: Colors.pink,
                     padding: EdgeInsets.all(15),
                     child: Text('1'),),
                   )
                   
  
    ],
  ),
)



                ],
              ),
            ),
          )),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
