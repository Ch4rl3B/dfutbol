import 'package:flutter/material.dart';
import 'dart:async';


class Team {
  final int id;
  final String name;
  final String logo;
  final int league;
  final int position;
  final List<String> lastFives;
  final String nextMatch;

  Team(
      {this.id, this.name, this.logo, this.lastFives, this.league, this.nextMatch, this.position})
      :
        assert(id != null),
        assert(name != null);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Team && other.id == this.id;


  @override
  int get hashCode =>
      id.hashCode;


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = new Map<String, dynamic>();
    map['id'] = this.id;
    map['name'] = this.name;
    map['logo'] = this.logo != null ? true : false;
    map['lastFives'] = this.lastFives;
    map['league'] = this.league;
    map['nextMatch'] = this.nextMatch;
    map['position'] = this.position;
    return map;
  }

  @override
  String toString() {
    return toMap().toString();
  }


  Team.fromMap(Map<String, dynamic> map):
        this.id = map['id'],
        this.name = map['name'],
        this.logo = map['logo'],
        this.league = map['league'],
        this.position = map['position'],
        this.lastFives = map['lastFives'],
        this.nextMatch = map['nextMatch'];

}


abstract class TeamRepository {
  Future<List<Team>> getAll();

  Future<Team> get(
      {id, name});
}