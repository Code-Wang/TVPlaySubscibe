import 'package:flutter/material.dart';

class TVPlayInformation extends StatelessWidget {
  final TVPlayStruct tvplay;

  TVPlayInformation({Key key, @required this.tvplay}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return getUserInformation(context);
  }

  Widget getUserInformation(context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("剧集信息"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.tvplay.tvplayname),
            Text(this.tvplay.tvplayintro),
          ]
        ),
      )
    );
  }
}

class TVPlayStruct{
  String tvplayname;
  String tvplayintro;
  //初始化属性，以下是简写的构造函数
  TVPlayStruct(this.tvplayname,this.tvplayintro);
}