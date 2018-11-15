import 'package:flutter/material.dart';
import '../models/team.dart';



class TeamWidget extends StatelessWidget{

  final Team team;
  final int pos;


  TeamWidget({this.team, this.pos});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: new Card(
          margin: EdgeInsets.all(2.0),
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children: <Widget>[
                  new Image.asset(team.logo, width: 100.0, height: 100.0, fit: BoxFit.contain,),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(team.name, style: Theme.of(context).primaryTextTheme.body1,)
                    ],
                  )
                ],
            ),
          )
      ),
    );
  }

}