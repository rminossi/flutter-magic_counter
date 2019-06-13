import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador MTG",
    home: Stack(
      children: <Widget>[
        Image.asset(
          "images/background.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Padding(
          padding: EdgeInsets.only(top:80.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Text(
            "Jogador: 1: 20", 
            style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                  onPressed: (){},
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            Text(
            "Vivo", 
            style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)
            )
        ],
        ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom:80.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Text(
            "Jogador: 2: 20", 
            style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                  onPressed: (){},
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            Text(
            "Vivo", 
            style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)
            )
        ],
        ),
        ),
      ],
    )
  ));
}