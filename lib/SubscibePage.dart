import 'package:flutter/material.dart';

class SubscibePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _StateSubscibePage();
}

class _StateSubscibePage extends State<SubscibePage>{
  @override
  Widget build(BuildContext context) {
    return getSubscibeTVPlay(context);
  }

  Widget getSubscibeTVPlay(context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("我的订阅"),
      ),
      body: Center(
        child: Text("订阅功能"),
      ),
    );
  }
}