import 'package:flutter/material.dart';
import 'comm/TVPlayInformation.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _StateHomePage();
}

class _StateHomePage extends State<HomePage>{
  List<TVPlayStruct> tvplaylist;
  @override
  Widget build(BuildContext context) {
    return getRecommend(context);
  }

  Widget getRecommend(context){
    getTVData();
    return ListView(
      children: getData(),
    );
  }

  void getTVData(){
    this.tvplaylist = new List();
    for(int i = 0; i < 10; i++){
      tvplaylist.add(
        TVPlayStruct(
          '这是第{$i+1}部电视剧',
          '这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事，这是一个爱情故事！',
        ),
      );
    }
  }

  List<Widget> getData(){
    List<Widget> list = new List();
    for(int i = 0; i < 10; i++){
      list.add(
        ListTile(
        title: Text(this.tvplaylist[i].tvplayname),
        subtitle: Text(this.tvplaylist[i].tvplayintro),
        leading: Icon(Icons.memory),
        onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context){return TVPlayInformation(tvplay: this.tvplaylist[i]);}
              )
            );
          }
        ),
      );
    }

    return list;
  }
}