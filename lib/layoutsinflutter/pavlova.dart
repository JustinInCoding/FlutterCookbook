import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter layout demo",
      home: buildHomePage("Strawberry Pavlova Recipe"),
    );
  }

  Widget buildHomePage(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        "Strawberry Pavlova",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    final subTitle = Text(
        "Pavlova is a meringue-based dessert named after the Russian ballerina "
            "Anna Pavlova. Pavlova features a crisp crust and soft, light inside, "
            "topped with fruit and whipped cream.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Georgia",
        fontSize: 25
      ),
    );

    var starts = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.black,),
        Icon(Icons.star, color: Colors.black,),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          starts,
          Text(
            "170 reviews",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: "Roboto",
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: "Roboto",
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500],),
                  Text("PREP:"),
                  Text("25 min"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green[500],),
                  Text("COOK:"),
                  Text("1 hr"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500],),
                  Text("FEEDS:"),
                  Text("4-6"),
                ],
              )
            ],
          ),
        )
    );

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mainImage = Image.asset(
      "assets/pavlova.jpg",
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }

}
