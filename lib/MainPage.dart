import 'package:flutter/material.dart';
import 'package:subscibetvplay/HomePage.dart';
import 'package:subscibetvplay/SubscibePage.dart';
import 'package:subscibetvplay/UserPage.dart';
 
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MainPageWidget());
  }
}
 
class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainPageState();
}
 
class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['推荐', '订阅', '我的'];
  var _pageList;
 
  Icon getTabIcon(int curIndex) {
    return tabImages[curIndex];
  }

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }
 
  void initData() {
    tabImages = [
      Icon(Icons.star),
      Icon(Icons.subscriptions),
      Icon(Icons.mail)
    ];

    _pageList = [
      new HomePage(),
      new SubscibePage(),
      new UserPage(),
    ];
  }
 
  @override
  Widget build(BuildContext context) {
    initData();
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitle(2)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
              }
            );
          },
        )
    );
  }
}