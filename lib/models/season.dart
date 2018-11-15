import 'team.dart';
import 'imodel.dart';

/// TODO CHECK THIS....
/// Part of the Competition model... maybe not mapped on database...
class CurrentSeason implements iModel{
  final int id;
  final DateTime startDate;
  final DateTime endDate;
  final int currentMatchday;
  final Team winner;

  CurrentSeason({this.id, this.startDate, this.endDate, this.currentMatchday,
    this.winner});


  CurrentSeason copyWith({id, startDate, endDate, currentMatchday,
    winner}) {
    return CurrentSeason(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        currentMatchday: currentMatchday ?? this.currentMatchday,
        winner: winner ?? this.winner
    );
  }


  /* ********** Mandatory ********** */
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CurrentSeason &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              startDate == other.startDate &&
              endDate == other.endDate;

  @override
  int get hashCode =>
      id.hashCode ^
      startDate.hashCode ^
      endDate.hashCode;

  /* *******************************  */


  CurrentSeason.fromMap(Map<String, dynamic> map)
      :
        this.id = map['id'],
        this.startDate = map['startDate'],
        this.endDate = map['endDate'],
        this.currentMatchday = map['currentMatchday'],
        this.winner = map['winner'];


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = new Map();
    map['id'] = this.id;
    map['startDate'] = this.startDate;
    map['endDate'] = this.endDate;
    map['currentMatchday'] = this.currentMatchday;
    map['winner'] = this.winner;
    return map;
  }

}