import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
   MobileBody({super.key});


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white.withOpacity(.5),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(.5),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {

            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              'HUMMING \n BIRD.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              color: Colors.teal,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SKILL UP NOW !',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(onPressed: () {}, child: Text('Tap here'))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.video_settings_rounded),
                      SizedBox(width: 20),
                      Text(
                        'Episodes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.info_sharp),
                      SizedBox(width: 20),
                      Text(
                        'About',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Center(
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
