import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TryNavigationRail extends StatefulWidget {
  @override
  _TryNavigationRailState createState() => _TryNavigationRailState();
}

class _TryNavigationRailState extends State<TryNavigationRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            labelType: NavigationRailLabelType.selected,
          groupAlignment: 1.0,
            onDestinationSelected: (int index) {
              if(_selectedIndex != index) {
                setState(() {
                  _selectedIndex = index;
                });
              }
            },
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.camera_rear),
                selectedIcon: Icon(Icons.camera_front),
                label: Text('Camera'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.headset),
                selectedIcon: Icon(Icons.headset_off),
                label: Text('Headset'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_box),
                selectedIcon: Icon(Icons.account_circle),
                label: Text('Account'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.call),
                selectedIcon: Icon(Icons.call_end),
                label: Text('Call'),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Center(
              child: Text(
                'selectedIndex: $_selectedIndex',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          )

        ],
      )
    );
  }
}