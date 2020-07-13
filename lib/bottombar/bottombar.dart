import 'package:flutter/material.dart';
import 'package:photo/detailDash/DetailDash.dart';
import 'package:photo/homeDash/HomeDash.dart';
import 'package:photo/searchDash/SearcgDash.dart';

class BottomDash extends StatefulWidget {
  @override
  _BottomDashState createState() => _BottomDashState();
}

class _BottomDashState extends State<BottomDash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BottomNavigationBarWidget(),
      ),
    );
  }
}
class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}
class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _bottomNavigationBarColor = Colors.white;
  List<Widget> _dynamicPageList;
  int _index = 0;
  @override
  void initState() {
    _dynamicPageList = List();
    _dynamicPageList..add(HomeDash())..add(DetailDash())..add(SearchDash());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _dynamicPageList[_index],
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: (){
              setState(() {
                _index = 1;
              });
            },
            tooltip: '',
            child: Icon(
              Icons.perm_identity,
              color: _bottomNavigationBarColor,
            )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            shape: CircularNotchedRectangle(),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.home),
                      color: _bottomNavigationBarColor,
                      onPressed: (){
                        setState(() {
                          _index = 0;
                        });
                      }
                  ),
                  IconButton(
                      icon: Icon(Icons.search),
                      color: _bottomNavigationBarColor,
                      onPressed: (){
                        setState(() {
                          _index = 2;

                        });
                      }
                  )
                ]
            )
        )
    );
  }
}
