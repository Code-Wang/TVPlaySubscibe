import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _StateUserPage();
}

class _StateUserPage extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
    return getUserInformation(context);
  }

  Widget getUserInformation(context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("我的信息"),
      ),
      body: Center(
        child: Text("用户管理"),
      ),
    );
  }
}