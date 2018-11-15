import 'package:flutter/material.dart';
import '../providers/bloc.providers.dart';
import '../models/team.dart';
import '../bloc/favorites_bloc.dart';
import 'dart:async';
import 'team.widget.dart';
import 'emptyList.widget.dart';
import 'error.widget.dart';

class FavoritesView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return new MainView();
  }

}



class MainView extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: new SafeArea(
          bottom: false,
          minimum: EdgeInsets.all(8.0),
          child: new StreamBuilder<Map<int, List<Team>>>(
          initialData: {},
          stream: BlocProvider.of(context).favoritesList,
          builder: (context, snapshot) {
              if(snapshot.hasError){
                return new ErrorView();
              } else if(snapshot.data.isEmpty){
                return new EmptyView();
              } else {
                return ListView.builder(itemBuilder: (bcontext, pos){
                  var key = snapshot.data.keys.toList()[pos];
                  return new ListItem(league: key, teams: snapshot.data[key]);
                },
                itemCount: snapshot.data.keys.length,
                shrinkWrap: false,
                padding: EdgeInsets.all(8.0),
                );
              }
          },
      )),
    );
  }

}


class ListItem extends StatelessWidget{

  final int league;
  final List<Team> teams;


  ListItem({this.league, this.teams});

  @override
  Widget build(BuildContext context) {

    List<Widget> widguets = <Widget>[
      new Text(leagesList[league], style: Theme.of(context).primaryTextTheme.body1),
      new Divider(height: 10.0, color: Colors.black,)
    ];

    widguets.addAll(teams.map((t)=>TeamWidget(team: t, pos: teams.indexOf(t),)));

    return Container(
      //color: <Color>[Colors.pinkAccent, Colors.deepPurpleAccent, Colors.redAccent, Colors.limeAccent][league],
      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: widguets,
      ),
    );
  }

}


const List<String> leagesList = const <String>[
  "Premier League",
  "La Liga Santander",
  "Serie A",
  "Bundesliga",
  "Eredivise"
];