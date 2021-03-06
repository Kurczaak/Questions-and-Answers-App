import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
        Text("Your score:",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        Text(score.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        FlatButton(
          child: Text("Restart Quiz!", style: TextStyle(fontSize: 20)),
          onPressed: resetHandler,
          textColor: Colors.red,
        )
      ]),
    );
  }
}
