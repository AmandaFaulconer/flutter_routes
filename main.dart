//Questions
//How to add a hex color to the theme to change the top color?
//How to make the theme color black?

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './taco.dart';
import './drink.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {

  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    TacoPage(),
    DrinkPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chicken Taco App',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
          backgroundColor: Color(0xfff9edeb),
          appBar: AppBar(
            centerTitle: true,
            title: Text("Puffy Shell Chicken Tacos",
            style: TextStyle(fontSize: 28.0,
            color: Colors.black)),
          ),
          body: _pageOptions[_selectedPage],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xffe6694c),
            currentIndex: _selectedPage,
            onTap: (int index){
              setState(() {
                 _selectedPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black, size: 25.0,),
                title: Text('Home',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fastfood, color: Colors.black, size: 25.0,),
                title: Text('Taco',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_drink, color: Colors.black, size: 25.0,),
                title: Text('Drink',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),)
              ),
            ],
          ),
        )
    );
  }
}