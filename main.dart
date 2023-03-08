import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  MyAppStatement createState() {
    return MyAppStatement();
  }
}

class MyAppStatement extends State<myapp> {
  int count = 0;
  void increment() {
    setState(() {
      count += 1;
    });
  }

  void decrement() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(100, 0, 212, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(125, 140, 187, 57),
        title: Text(
          "Like",
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Icon(
                IconData(0xee35, fontFamily: 'MaterialIcons'),
                color: Color.fromARGB(255, 255, 255, 255),
              )),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(width: 15.0,),
          Expanded(
            child: FloatingActionButton.extended(
              onPressed: increment,
              icon: Icon(Icons.thumb_up),
              label: Text("Like"),
              backgroundColor: Colors.pink,
            ),
          ),
          SizedBox(width: 15.0),
          Expanded(
            child: FloatingActionButton.extended(
              onPressed: decrement,
              icon: Icon(Icons.thumb_down),
              label: Text("Dislike"),
              backgroundColor: Colors.pink,
            ),
          ),
        ],
      ),
      body: Center(
        child: new Text(
          "Liked  " + count.toString(),
          style: new TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25.0,
          ),
        ),
      ),
    ));
  }
}
