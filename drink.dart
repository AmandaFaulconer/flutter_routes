import 'package:flutter/material.dart';

class DrinkPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xfff9edeb),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
          margaritaimg,
          drinkheading,
          info,
          ingredientsHeading,
          ingredientList,
          directionHeading,
          directionList,
        ],
      ),
    )
    );
  }
}

//Widgets-------------------------------------------------------

Widget drinkheading = Container(
  child: (Text("\nMango Chili Margarita",
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20.0,),
    )
  )
);

Widget margaritaimg = Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Image.asset("images/margarita.jpg"),
);

Widget info = Container(
  child: Text("\nFor a beverage, I would go with a Mango and Chili Margarita. The combination of sweet,"
      "salty and spicy go well together in this summer cocktail with Mexican flavours.\n",
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 18.0,),
  ),
);

Widget ingredientsHeading = Container(
  child: Text("Ingredients: ",
    style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline),
  ),
);

Widget ingredientList = Container(
child: Text("\n~ 1 tsp sea salt" + "\n"
            + "~ 1 tap chili powder" + "\n"
            + "~ 1 lime wedge" + "\n"
            + "~ 3 large mangoes, cut into cheeks" + "\n"
            + "~ 1 lime leaf, stalk removed, finely chopped" + "\n"
            + "~ 30 ml freshly squeezed lime juice" + "\n"
            + "~ 30 ml freshly squeezed lemon juice" + "\n"
            + "~ 60 ml anejo tequila" + "\n"
            + "~ 30 ml Cointreau" + "\n"
            + "~ 100 g crushed ice" + "\n",
      style: TextStyle(fontSize: 16.0),),
);

Widget directionHeading = Container(
  child: (
      Text("Directions: ",
        style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline),
      )
  ),
);

Widget directionList = Container(
  child: (
      Text("\n1. To coat the rim of the glasses, combine the salk and chili powder"
          "and sprinkle over a small plate to roughly cover. Run the lime wedge around"
          "the rims of the glasses and dip the rims into the spiced salt.  " + "\n"
          + "\n2. Combine the mango cheeks, leaving one for garnish, with the chopped"
              "lime leaf, citrus juices, spirits and crushed ice in a blender and process"
              "until smooth" + "\n"
          + "\n3. Finely slice the remaining mango cheeks and add a few slices to each glass. "
              "Add any leftover mango slices to the blender and blitz briefly to combine." + "\n"
          + "\n4. Taste and adjust the citus juice if necessary, then pour into the "
              "prepared glasses and serve." + "\n",
        style: TextStyle(fontSize: 16.0),)
  ),
);

