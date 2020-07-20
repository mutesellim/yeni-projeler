import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Kullanımı"),
        bottom: TabBarim(),
      ),
      bottomNavigationBar: AltTabBarim(),
      body: TabBarView(controller:tabController,children: <Widget>[
        Container(color:Colors.red,child: Text("Tab1",style: TextStyle(fontSize: 48),),),
        Container(color:Colors.green,child: Text("Tab2",style: TextStyle(fontSize: 48),),),
        Container(color:Colors.blue,child: Text("Tab3",style: TextStyle(fontSize: 48),),),
      ],),
    );
  }

  TabBar TabBarim() {
    return TabBar(
        controller: tabController,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.keyboard),
            text: ("Tab 1"),
          ),
          Tab(
            icon: Icon(Icons.save),
            text: ("Tab 2"),
          ),
          Tab(
            icon: Icon(Icons.error),
            text: ("Tab 3"),
          ),
        ],
      );
  }

  Widget AltTabBarim() {
    return Container(
      color: Colors.teal,
      child: TabBar(
        controller: tabController,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.keyboard),
            text: ("Tab 1"),
          ),
          Tab(
            icon: Icon(Icons.save),
            text: ("Tab 2"),
          ),
          Tab(
            icon: Icon(Icons.error),
            text: ("Tab 3"),
          ),
        ],
      ),
    );
  }
}
