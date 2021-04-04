import 'package:flutter/material.dart';

class TacoPage extends StatefulWidget{
  @override
  _TacoPageState createState() => _TacoPageState();
}

class _TacoPageState extends State<TacoPage>{

  bool liked = false;

  _pressed() async{
    setState(() {
      liked =! liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            chickenimg,
            tacoheading,
            chickeninfo,
            ListTile(leading:
              IconButton(
                icon: Icon(liked ? Icons.favorite: Icons.favorite_border,
                  color: liked ? Colors.red: Colors.grey,
                  size: 60.0),
                  onPressed: () => _pressed(),
              )
            ),
          ],
        )
        )
      );
  }
}

//Widgets for taco main----------------------------------------
Widget tacoheading = Container(
  padding: EdgeInsets.only(top: 10.0),
  child: (
      Text("Let's Make Some Tacos!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
      ),
      )
  ),
);

Widget chickenimg = Container(
  child: Image.asset("images/chicken_taco.jpg"),
);

Widget chickeninfo = Container(
  child: (
      Text("\nThis Puffy Taco with Napa Chicken Salad and Tomatillo Verde is type of fusion "
          "between authentic Mexican flavours with American locavore spirt. These flavors helped inspire "
          "this chicken salad that is served in a crispy, buttery taco shell with lashings of "
          "Tomatillo verde. These tacos can be cooked well ahead of time and reheated for a "
          "minute in the oven as required.\n",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18.0,
        ),
      )
  ),
);





