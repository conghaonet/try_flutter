import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tryflutter/try_bottom_navigation_bar.dart';
import 'package:tryflutter/try_calendar_date_picker.dart';
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
      // 国际化教程：https://www.colabug.com/2020/0408/7226115/amp/
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
      ],
      supportedLocales: [
        Locale("en"),
        Locale("zh")
      ],
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
      RaisedButton(child: Text('try_calendar_date_picker'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TryCalendarDatePicker()));
        },
      ),
    ];
  }
}
