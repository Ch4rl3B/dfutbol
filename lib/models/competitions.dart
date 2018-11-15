import 'imodel.dart';
import 'season.dart';

class Competition implements iModel {
  final int id;
  final Map<String, dynamic> area;
  final String name;
  final String code;
  final String emblemUrl;
  final CurrentSeason currentSeason;
  final int numberOfAvailableSeasons;
  final DateTime lastUpdated;


  Competition({this.id, this.area, this.name, this.code, this.emblemUrl,
    this.currentSeason, this.numberOfAvailableSeasons, this.lastUpdated});

  @override
  Competition copyWith({id, area, name, code, emblemUrl,
    currentSeason, numberOfAvailableSeasons, lastUpdated}) {
    return Competition(
        id: id ?? this.id,
        area: area ?? this.area,
        name: name ?? this.name,
        code: code ?? this.code,
        emblemUrl: emblemUrl ?? this.emblemUrl,
        currentSeason: currentSeason ?? this.currentSeason,
        numberOfAvailableSeasons: numberOfAvailableSeasons ??
            this.numberOfAvailableSeasons,
        lastUpdated: lastUpdated ?? this.lastUpdated
    );
  }

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = new Map();
    map['id'] = this.id;
    map['area'] = this.area;
    map['name'] = this.name;
    map['code'] = this.code;
    map['emblemUrl'] = this.emblemUrl;
    map['currentSeason'] = this.currentSeason;
    map['numberOfAvailableSeasons'] = this.numberOfAvailableSeasons;
    map['lastUpdated'] = this.lastUpdated;
    return map;
  }

  /* ********** Mandatory ********** */

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Competition &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              area == other.area &&
              code == other.code &&
              currentSeason == other.currentSeason;

  @override
  int get hashCode =>
      id.hashCode ^
      area.hashCode ^
      code.hashCode ^
      currentSeason.hashCode;

  @override
  String toString() {
    return 'Competition{id: $id, area: $area, name: $name, code: $code, emblemUrl: $emblemUrl, currentSeason: $currentSeason, numberOfAvailableSeasons: $numberOfAvailableSeasons, lastUpdated: $lastUpdated}';
  }

/* *******************************  */



}