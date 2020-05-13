import 'package:flutter/material.dart';
import 'package:tryflutter/try_bottom_navigation_bar.dart';
import 'package:tryflutter/try_navigation_rail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Try Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try Flutter widgets&animations'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: _buildMenu(context),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenu(BuildContext context) {
    return <Widget>[
      RaisedButton(child: Text('try_navigation_rail'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TryNavigationRail()));
        },
      ),
      RaisedButton(child: Text('try_bottom_navigation_bar'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TryBottomNavigationBar()));
        },
      ),
    ];
  }
}
