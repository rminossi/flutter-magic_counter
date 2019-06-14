import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador MTG",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

int _life1 = 20;
int _life2 = 20;
String _status1 = "";
String _status2 = "";

void _changeLife1(int delta){
  setState(() {
    _life1 += delta;

    if(_life1 <= 0){
      _status1 = "End game";
    }else{
      _status1 = "";
    }
  });
}
void _changeLife2(int delta){
  setState((){
    _life2 += delta;

    if(_life2 <= 0){
      _status2 = "End game";
    }else{
      _status2 = "";
    }
  });
}

void _reset(){
  setState(() {
    _life1 = 20;
    _life2 = 20;
    _status1 = "";
    _status2 = "";
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic Counter"),
        centerTitle: true,
        backgroundColor: Color(0xFFBF8C3F),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: _reset
          ,)
        ],
      ),
      body: Center(
      child: Stack( 
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
            "Player 1: $_life1", 
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
                  onPressed: (){
                    _changeLife1(1);
                  },
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: (){
                      _changeLife1(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
            "$_status1", 
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
            "Player 2: $_life2", 
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
                  onPressed: (){
                    _changeLife2(1);
                  },
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: (){
                      _changeLife2(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
            "$_status2", 
            style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)
            )
        ],
        ),
        ),
      ],
    )
    )
    );
  }
}