import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoCorona',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  int tileSelected = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('GoCorona', style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Image'),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.livemint.com/img/2020/04/06/600x338/PTI05-04-2020_000236B_1586158130448_1586158148409.jpg'
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              selected: tileSelected == 0 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 0;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Register'),
              leading: Icon(Icons.person_add),
              selected: tileSelected == 1 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 1;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Helpline'),
              leading: Icon(Icons.contact_phone),
              selected: tileSelected == 2 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 2;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Positive Cases Near You'),
              leading: Icon(Icons.add),
              selected: tileSelected == 3 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 3;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAQ Corona'),
              leading: Icon(Icons.question_answer),
              selected:  tileSelected == 4 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 4;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('Donations/Funds'),
              leading: Icon(Icons.monetization_on),
              selected:  tileSelected == 5 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...

                tileSelected = 5;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Training Course'),
              leading: Icon(Icons.video_library),
              selected:  tileSelected == 6 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 6;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About GoCorona'),
              leading: Icon(Icons.code),
              selected:  tileSelected == 7 ? true : false,
              onTap: () {
                // Update the state of the app.
                // ...
                tileSelected = 7;
                setState(() {

                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        borderRadius: BorderRadius.circular(2.0),
        child: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
          border: Border.all(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 2.0
          )
        ),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.camera, color: Colors.white,),
                SizedBox(
                  height: 5.0,
                ),
                Text('QR', style: TextStyle(
                  fontSize: 14.0,
                    color: Colors.white
                ),),
              ],
            ),
            ),

            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.map, color: Colors.white),
                SizedBox(
                  height: 5.0,
                ),
                Text('MAPS', style: TextStyle(
                  fontSize: 14.0,
                    color: Colors.white
                ),),
              ],
            ),
            ),
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.track_changes, color: Colors.white),
                SizedBox(
                  height: 5.0,
                ),
                Text('TRACK', style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white
                ),),
              ],
            ),
            ),

            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.pages, color: Colors.white),
                SizedBox(
                  height: 5.0,
                ),
                Text('NEWS', style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white
                ),),
              ],
            ),
            ),

            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.check_circle_outline, color: Colors.white),
                SizedBox(
                  height: 5.0,
                ),
                Text('CHECK', style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white
                ),),
              ],
            ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
