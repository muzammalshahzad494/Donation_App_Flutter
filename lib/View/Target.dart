// import 'package:donation_app/View/DashedContainer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:donation_app/Components/AwsomeTextField.dart';
import 'package:donation_app/Components/FieldList.dart';

class TargetVC extends StatelessWidget {
  const TargetVC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: GradientAppBar(
          title: 'Target Sample Design',
        ),
        backgroundColor: const Color(0xFFF5F5F5),
        body: Center(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  AwsomeTextField(
                    title: '',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //DashedBorder
                  DashedBorderView(),
                  SizedBox(
                    height: 10,
                  ),

                  //list of Months targets

                  Expanded(
  child: Container(
    padding: EdgeInsets.all(16.0), // Optional padding
    child: Column(
      children: [
        Expanded(child: FieldList(numberOfFields: 5)),
        SizedBox(height: 16.0), // Optional space between lists
        Expanded(child: FieldList(numberOfFields: 5)),
      ],
    ),
  ),
)


                  //List of Month end here
                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DashedBorderView extends StatelessWidget {
  const DashedBorderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.red[100], borderRadius: BorderRadius.circular(10)),
      child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(10),
          padding: EdgeInsets.all(17),
          color: Colors.red,
          child: Text('Fresh Policy')),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.asset(
          'assets/cake.png',
          height: 50,
          width: 50,
        ),
        SizedBox(width: 10), // Add some spacing between the image and the text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
          children: [
            Text(
              'Omer Yousuf',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Agent Code: ',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: '32432423',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Agent Level: ',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: 'Medium',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GradientAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple], // Gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(13), // Bottom rounded corners
            ),
          ),
        ),
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
