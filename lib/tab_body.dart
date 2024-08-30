import 'package:flutter/material.dart';

class TabBody extends StatelessWidget {
  const TabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.5),
      appBar: AppBar(
        title: Text(
          'HUMMING \n BIRD.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Episodes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\n THE BASICS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'In this course, we will go over the basics of using\n'
                      'Flutter Web for development. Topics will include\n'
                      'Responsive Layout, Deploying, Font Changes, hover\n'
                      'functionality, modals, and more.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )

            ),

            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
                padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                elevation: MaterialStateProperty.all(10),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                ),
              ),
              child: Text(
                'Join course',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )


          ],
        ),
      ),

    );
  }
}
