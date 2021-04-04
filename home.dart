import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{



  bool liked = false;



  _pressed() async{
    setState(() {
      liked =! liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            padding: EdgeInsets.all(15.0),
              child: ListView(
                children:<Widget>[
                          chickenimg,
                          chickeninfo,
                          drinkimg,
                          drinkinfo,
                          liketext,
                  ListTile(leading:
                    IconButton(
                      icon: Icon(liked ? Icons.favorite: Icons.favorite_border,
                              color: liked ? Colors.red: Colors.grey,
                              size: 60.0),
                      onPressed: () => _pressed(),
                    )
                  ),
                Text("\n")
          ]
        ),
      )
    )
    );
  }
}

//Widgets-----------------------------------------------------
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

Widget drinkimg = Container(
  child: (
      Image.asset("images/margarita.jpg")
  ),
);

Widget drinkinfo = Container(
  child: (
      Text("\nFor a beverage, I would go with a Mango and Chili Margarita. The combination of sweet,"
          "salty and spicy go well together in this summer cocktail with Mexican flavours.\n",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18.0,
        ),
      )
  ),
);

Widget liketext = Container(
  child: (
    Text("Tap to like!",
      style: TextStyle(
        color: Colors.redAccent,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    )
  ),
);


