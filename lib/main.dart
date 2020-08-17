import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab Orientation Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Orientation'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'One'),
            Tab(text: 'Two'),
            Tab(text: 'Three'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TabOne(),
          TabTwo(),
          TabThree(),
        ],
      ),
    );
  }
}

class TabOne extends StatefulWidget {
  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue);
  }
}

class TabTwo extends StatefulWidget {
  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}

class TabThree extends StatefulWidget {
  @override
  _TabThreeState createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}
