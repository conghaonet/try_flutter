import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TryBottomNavigationBar extends StatefulWidget {
  @override
  _TryBottomNavigationBarState createState() => _TryBottomNavigationBarState();
}

class _TryBottomNavigationBarState extends State<TryBottomNavigationBar> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('try_bottom_navigation_bar'),),
      body: Container(
        child: Center(
          child: Text('tabIndex: $_tabIndex'),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          currentIndex: _tabIndex,
          type: BottomNavigationBarType.fixed, // >=4个选项时需要强制设置为BottomNavigationBarType.fixed
          fixedColor: Theme.of(context).primaryColorDark, // 默认使用primaryColor
          onTap: (index) {
            if(_tabIndex != index) {
              setState(() {
                _tabIndex = index;
              });
            }
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('camera'),
              icon: Icon(Icons.camera_rear),
              activeIcon: Icon(Icons.camera_front),
            ),
            BottomNavigationBarItem(
              title: Text('headset'),
              icon: Icon(Icons.headset),
              activeIcon: Icon(Icons.headset_off),
            ),
            BottomNavigationBarItem(
              title: Text('account'),
              icon: Icon(Icons.account_box),
              activeIcon: Icon(Icons.account_circle),
            ),
            BottomNavigationBarItem(
              title: Text('call'),
              icon: Icon(Icons.call),
              activeIcon: Icon(Icons.call_end),
            ),
          ],
        ),
      ),
    );
  }
}